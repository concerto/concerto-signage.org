---
title: OpenID Connect (SSO)
section: Administration
description: Connect Concerto to an OpenID Connect identity provider, and the claims your provider must release for sign-in to work.
---

Concerto 3 can delegate authentication to any OpenID Connect (OIDC) identity
provider: Google Workspace, Microsoft Entra ID (Azure AD), Okta, Keycloak,
Authentik, or a university CAS server with OIDC enabled. Once configured, a
**Sign in with SSO** option appears on the login page and accounts are created
automatically the first time a person signs in.

## Before you start

You need admin access to two things:

1. **Your Concerto server** - specifically the admin settings page.
2. **Your identity provider** - where you register Concerto as a client
   (also called a "relying party" or "application") and control which user
   attributes it shares.

## Step 1: Register Concerto with your identity provider

Create a new OIDC **client** / **application** in your identity provider and
note the **Client ID** and **Client Secret** it issues.

When it asks for a **redirect URI** (also called a callback or reply URL),
enter exactly:

```
https://YOUR-CONCERTO-HOST/users/auth/openid_connect/callback
```

Replace `YOUR-CONCERTO-HOST` with the hostname your users reach Concerto at
(for example `signage.example.edu`). The path must be exactly
`https://signage.example.edu/users/auth/openid_connect/callback`.

Concerto authenticates to the token endpoint using **HTTP Basic**
(`client_secret_basic`) and requests the following **scopes**:

```
openid  email  profile
```

Make sure your client is allowed to request all three.

## Step 2: Enter the settings in Concerto

Sign in to Concerto as a system administrator and open **Admin → Settings**.
Under **SSO / OpenID Connect**, fill in three fields:

| Field | What to enter |
| --- | --- |
| **Issuer** | Your provider's issuer URL, e.g. `https://login.example.edu`. |
| **Client ID** | The client identifier from Step 1. |
| **Client Secret** | The client secret from Step 1. |

All three must be set. Concerto only enables SSO once the issuer, client ID,
and client secret are all present. Save your changes and sign out to see the
**Sign in with SSO** option on the login page.

> **The issuer must support discovery.** Concerto reads your provider's
> configuration from `ISSUER/.well-known/openid-configuration`. If that URL
> does not return valid JSON in a browser, the issuer value is wrong or
> discovery is not enabled on your provider.

## Step 3:  Release the required claims

Concerto creates a local account from the information (the **claims**) your
provider returns about the user. Your provider must release:

| Claim | Required? | Used for |
| --- | --- | --- |
| `email` | **Yes** | The account's email address. Sign-in **fails** without it. |
| `given_name` + `family_name` | Preferred | The user's first and last name. |
| `name` | Alternative | Full name, split into first/last if the structured claims above are absent. |

In short: **`email` is mandatory, and a name is expected.** If your provider
sends an email but no name, Concerto will still sign the user in and derive a
display name from the email address. If the **email claim is missing**, the
account cannot be created and the user is sent back to the sign-in page with a
message explaining which claims were missing.

Most standard providers (Google, Entra ID, Okta) release these claims by
default. Others, CAS in particular, do not.

## Provider notes: CAS

Apereo CAS supports OIDC, but **attribute release is opt-in and configured
per service.** Out of the box a CAS OIDC client typically receives only the
subject (`sub`, usually the username) and **no email or name claims**.
Authentication succeeds at CAS, but Concerto can't create the account and
the user never appears logged in.

To fix it, in your CAS service definition you must:

1. Grant the `openid`, `email`, and `profile` scopes to the Concerto service.
2. Map your directory attributes onto the standard claims - most importantly
   release the user's mail attribute as the **`email`** claim, and their name
   as `given_name`/`family_name` (or `name`).

Consult your CAS version's documentation for attribute release and OIDC scope
configuration, as the exact syntax varies between releases.

## Troubleshooting

**"It authenticates without error, but the user isn't logged in."**
The identity provider almost certainly did not release an **`email`** claim
(and possibly no name). Confirm the claims your provider sends and map `email`
as described above.

**Check the server logs.** When provisioning fails, Concerto writes a warning
line tagged `[OIDC]` that lists exactly which claims were missing and which
claims the provider actually sent. For example:

```
[OIDC] Authenticated with provider but could not provision a local user.
uid="jdoe" missing_claims=["email"] received_claims=["name", "nickname"]
validation_errors=["Email can't be blank"]
```

Here `received_claims` shows the provider sent a name but no email, the
`email` attribute needs to be mapped and released on the provider side.

**Discovery or connection errors.** Verify that
`ISSUER/.well-known/openid-configuration` loads in a browser and that the
issuer value in Concerto matches it exactly (including `https://` and no
trailing path differences).

**The SSO option doesn't appear.** All three settings: Issuer, Client ID,
and Client Secret must be filled in. Concerto hides the SSO option until
the configuration is complete.

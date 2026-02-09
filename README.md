# concerto-signage.org

This repo contains the website powering https://www.concerto-signage.org.

The static-site is powered by Jekyll, and hosts content describing a mix of Concerto 1 and Concerto 2.
It was migrated from a custom-built CMS Rails app built ~2010.

## Developing

This project includes a Devcontainer configuration. Open the folder in VS Code and choose "Reopen in Container" to get a pre-configured environment with Ruby and Jekyll installed.

Once inside the container (or if you have Ruby and Bundler installed locally):

1. Install dependencies:
   ```bash
   bundle install
   ```

2. Run the development server:
   ```bash
   bundle exec jekyll serve
   ```

## Writing Blog Posts

### Author setup

Authors are defined in `_data/authors.yml`. Each entry maps a short key to a display name and optional Twitter/X handle:

```yaml
bamnet:
  name: Brian Michalski
  twitter: bamnet
```

To add yourself, add a new entry to the file with your preferred key and full name. Set `twitter: 0` if you don't have a Twitter/X handle (this prevents the jekyll-seo-tag plugin from generating a bogus `twitter:creator` meta tag).

Use your key in post frontmatter:

```yaml
author: bamnet
```

### Social sharing

Every blog post automatically gets Open Graph and Twitter Card meta tags for rich link previews, powered by the `jekyll-seo-tag` plugin. The defaults are:

- **Image:** `/assets/images/blog_banner_1b.jpg` (the blog banner)
- **Title/Description:** pulled from the post's `title` and first paragraph

To customize a post's social preview, add optional frontmatter:

```yaml
description: "A short summary for link previews and search results."
image: /assets/images/my-custom-image.jpg
```

Custom images should be **1200x630px** (1.91:1 ratio). This is the recommended size for both Open Graph (Facebook, LinkedIn, Slack) and Twitter/X large image cards. Smaller images will work but may appear cropped or blurry on high-DPI screens.

## Deploying

Deployments are handled via GitHub Actions. Commits to the `master` branch trigger the `.github/workflows/deploy.yml` workflow, which builds the site and deploys it to GitHub Pages.

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

## Deploying

Deployments are handled via GitHub Actions. Commits to the `master` branch trigger the `.github/workflows/deploy.yml` workflow, which builds the site and deploys it to GitHub Pages.

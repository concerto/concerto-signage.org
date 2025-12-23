FROM mcr.microsoft.com/devcontainers/ruby:3.3

# Install Jekyll and Bundler
RUN gem install jekyll bundler

# Fix permissions for rvm/gem installation so the non-root 'vscode' user can install gems
RUN chown -R vscode:rvm /usr/local/rvm && \
    chmod -R g+w /usr/local/rvm

# Install additional OS packages if needed
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# Set the default shell to bash rather than sh
ENV SHELL /bin/bash

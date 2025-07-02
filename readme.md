# Portainer Subdomain Setup

Portainer is the ultimate tool to view and manage docker containers, both locally and on production. You can easily link it to your domain and make it have a custom subdomain, such as `portainer.mydomain.com` with this docker compose setup. Simply clone this repo wherever you want to run it.

# Setup

To create the portainer and link it to your domain, view below.

1.  Create the relevant `DNS RECORD` on your **DNS Provider**, this is different for everyone but straightforward.
2.  Open the Environment Variables file _(/.env)_ and modify the `DOMAIN_NAME` attribute to your domain
3.  Run `docker compose up -d` from the directory of the project
4.  That's it! You can follow and setup portainer with official docs as this uses the portainer image just like the getting started guide does.

This will use the existing portainer_data volume, and as such you should be able to use an existing installation (You can ignore this if you don't have it previously installed).

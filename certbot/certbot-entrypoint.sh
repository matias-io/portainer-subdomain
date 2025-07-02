#!/bin/sh
DOMAIN_NAME="${DOMAIN_NAME}"
EMAIL="${EMAIL}"

if [ ! -f "/etc/letsencrypt/live/${DOMAIN_NAME}/fullchain.pem" ]; then
  echo "First-time cert generation for ${DOMAIN_NAME}"
  certbot certonly \
    --standalone \
    --non-interactive \
    --agree-tos \
    --email "$EMAIL" \
    -d "$DOMAIN_NAME"
else
  echo "Cert already exists, skipping certbot."
fi

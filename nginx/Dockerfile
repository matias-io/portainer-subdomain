FROM nginx

COPY conf.d /etc/nginx/conf.d

CMD ["sh", "-c", "while [ ! -f /etc/letsencrypt/live/${DOMAIN_NAME}/fullchain.pem ]; do echo 'Waiting for certs...'; sleep 2; done && nginx -g 'daemon off;'"]

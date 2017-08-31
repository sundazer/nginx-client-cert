#!/bin/bash
docker stop cert-authenticator
docker rm cert-authenticator
docker build -t nginx-client-cert .
docker run --name cert-authenticator -p 443:443 \
    -v ${PWD}/logs:/var/log/nginx \
    -v ${PWD}/certs:/opt/nginx/keys \
    -e "SERVER1HTTPS_ENABLED=true" \
    -e "SERVER1CERTIFICATE_FILE=/opt/nginx/keys/server.csr" \
    -e "SERVER1CERTIFICATE_KEY=/opt/nginx/keys/server.key" \
    -d nginx-client-cert
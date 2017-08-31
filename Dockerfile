FROM blacklabelops/nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/www/
COPY certs /etc/nginx/certs
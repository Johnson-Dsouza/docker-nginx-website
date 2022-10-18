# Pull base image
FROM nginx

COPY static-site-nginx /usr/share/nginx/

COPY server /etc/nginx/conf.d/default.conf
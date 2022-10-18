# Pull base image
FROM nginx

COPY static-site-nginx /usr/share/nginx/

COPY nginx.conf /etc/nginx/conf.d/default.conf
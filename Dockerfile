# Pull base image
FROM nginx

COPY static-site-nginx /var/www/static-site-nginx

COPY nginx.conf /etc/nginx/conf.d/default.conf
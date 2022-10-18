# Pull ubuntu base image
FROM ubuntu:latest

USER root

RUN apt-get update
RUN apt-get install -y nginx

# Remove the default Nginx configuration file
RUN rm -rf /etc/nginx/nginx.conf

# Copy custom configuration file from the current directory
COPY nginx.conf /etc/nginx/nginx.conf

# COPY static-site-nginx to /var/www/
COPY static-site-nginx /var/www/static-site-nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD service nginx start
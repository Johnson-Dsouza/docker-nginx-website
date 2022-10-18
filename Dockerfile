# Pull ubuntu base image
FROM nginx:latest

# Copy static-site-nginx to /var/www
COPY static-site-nginx /var/www/

# Create sites-enabled directory 
# copy nginx.cnnf
RUN mkdir sites-enabled
COPY server /etc/nginx/sites-enabled

CMD service nginx restart
# Use the official PHP image as a base image
FROM php:7.4-apache

# Copy the local files to the container
COPY . /var/www/html/

# Expose port 80
EXPOSE 80

# Start the Apache service
CMD ["apache2-foreground"]

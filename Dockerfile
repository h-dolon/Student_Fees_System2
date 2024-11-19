# Use the PHP with Apache image
FROM php:8.1-apache

# Enable required PHP extensions
RUN docker-php-ext-install mysqli

# Copy project files to the container's web directory
COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Expose port 80
EXPOSE 80

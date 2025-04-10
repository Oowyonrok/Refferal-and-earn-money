FROM php:8.1-apache

# Enable mod_rewrite
RUN a2enmod rewrite

# Copy app files
COPY . /var/www/html/

# Set permissions
RUN chmod 777 /var/www/html/users.json && \
    chmod 666 /var/www/html/error.log

# Set working directory
WORKDIR /var/www/html

# Expose port
EXPOSE 80
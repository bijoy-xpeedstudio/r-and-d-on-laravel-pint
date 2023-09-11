# Use an official PHP base image
FROM php:8.1.0-fpm

# Set the working directory in the container
WORKDIR /var/www/html

# Install system dependencies and PHP extensions as needed
# (e.g., pdo, pdo_mysql, gd)

# Expose port 8880 for the Laravel server
EXPOSE 8880

# The script to run when the container starts
CMD ["./entry.sh"]
# Install system dependencies and PHP extensions as needed
RUN apt-get update && apt-get install -y \
    git \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql

# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#Git clone and setup file
RUN git clone https://github.com/bijoy-xpeedstudio/r-and-d-on-laravel-pint-and-husky.git
# Use an official PHP base image
FROM php:8.1.0-fpm

# Set the working directory in the container
WORKDIR /var/www/html

# Install system dependencies and PHP extensions as needed
# (e.g., pdo, pdo_mysql, gd)

# Copy the Laravel application files to the container
COPY . .

# Expose port 8880 for the Laravel server
EXPOSE 8880

# The script to run when the container starts
CMD ["./entry.sh"]

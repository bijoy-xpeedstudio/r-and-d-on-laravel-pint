#!/bin/bash

# Clear Laravel cache
php artisan cache:clear

# Optimize Laravel
php artisan optimize

# Start Laravel server
php artisan serve --host=0.0.0.0 --port=8880
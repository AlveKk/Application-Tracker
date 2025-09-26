FROM php:8.4-fpm AS base

# Install system dependencies for PhpSpreadsheet and Symfony
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install mbstring exif pcntl bcmath gd zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

# Development stage
FROM base AS development
ENV APP_ENV=dev
ENV COMPOSER_ALLOW_SUPERUSER=1

# Copy composer files first for better Docker layer caching
COPY composer.json ./
COPY composer.lock* ./

# Install Symfony dependencies
RUN composer install --optimize-autoloader --no-scripts --no-interaction --prefer-dist

# Copy application files (excluding vendor and var)
COPY --chown=www-data:www-data src/ src/
COPY --chown=www-data:www-data config/ config/
COPY --chown=www-data:www-data templates/ templates/
COPY --chown=www-data:www-data public/ public/
COPY --chown=www-data:www-data .env* ./

# Create directories with proper permissions for Excel operations
RUN mkdir -p var/cache var/log data data/backups \
    && chown -R www-data:www-data var data \
    && chmod -R 775 var data

EXPOSE 9000
CMD ["php-fpm"]

# Production stage
FROM base AS production
ENV APP_ENV=prod
ENV COMPOSER_ALLOW_SUPERUSER=1

# Copy composer files
COPY composer.json ./
COPY composer.lock* ./

# Install production dependencies only
RUN composer install --no-dev --optimize-autoloader --no-scripts --no-interaction --prefer-dist

# Copy application files with proper ownership
COPY --chown=www-data:www-data src/ src/
COPY --chown=www-data:www-data config/ config/
COPY --chown=www-data:www-data templates/ templates/
COPY --chown=www-data:www-data public/ public/
COPY --chown=www-data:www-data .env.example .env

# Set production permissions
RUN mkdir -p var/cache var/log data data/backups \
    && chown -R www-data:www-data var data \
    && chmod -R 755 var \
    && chmod -R 775 data

EXPOSE 9000
CMD ["php-fpm"]

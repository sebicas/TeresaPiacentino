# PHP 7.4 with Apache - Compatible with legacy PHP code
FROM php:7.4-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    msmtp \
    msmtp-mta \
    && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) \
    gd \
    mysqli \
    pdo \
    pdo_mysql

# Install PEAR and PEAR DB
RUN curl -o /tmp/go-pear.phar https://pear.php.net/go-pear.phar \
    && php /tmp/go-pear.phar \
    && pear install DB \
    && rm /tmp/go-pear.phar

# Enable Apache modules
RUN a2enmod rewrite headers

# Configure PHP for legacy compatibility
RUN { \
    echo 'short_open_tag = On'; \
    echo 'memory_limit = 128M'; \
    echo 'upload_max_filesize = 10M'; \
    echo 'post_max_size = 10M'; \
    echo 'max_execution_time = 60'; \
    echo 'error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT & ~E_NOTICE'; \
    echo 'display_errors = Off'; \
    echo 'log_errors = On'; \
    echo 'sendmail_path = /usr/bin/msmtp -t'; \
    } > /usr/local/etc/php/conf.d/legacy-php.ini

# Configure Apache to process .html files as PHP
RUN { \
    echo '<Directory /var/www/html>'; \
    echo '    AllowOverride All'; \
    echo '    Require all granted'; \
    echo '</Directory>'; \
    echo 'AddType application/x-httpd-php .php .html'; \
    } > /etc/apache2/conf-available/php-html.conf \
    && a2enconf php-html

# Set Apache ServerName to suppress warning
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Configure Apache to listen on port 3000 for Coolify
RUN sed -i 's/Listen 80/Listen 3000/' /etc/apache2/ports.conf \
    && sed -i 's/:80/:3000/' /etc/apache2/sites-available/000-default.conf

# Redirect Apache logs to stdout/stderr for Docker
RUN ln -sf /dev/stdout /var/log/apache2/access.log \
    && ln -sf /dev/stderr /var/log/apache2/error.log

# Copy application files
COPY public_html/ /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Create msmtp configuration directory
RUN mkdir -p /etc/msmtp

# Expose port 3000 for Coolify
EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:3000/ || exit 1

# Start Apache
CMD ["apache2-foreground"]

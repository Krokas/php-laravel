FROM php:7.4.11-apache

RUN apt-get update -y
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN pecl install redis \
    && docker-php-ext-enable redis
# Install GD
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev
RUN docker-php-ext-configure gd --with-jpeg --with-freetype
RUN docker-php-ext-install gd exif

# apache permissions
RUN sed -ri -e 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!/var/www/html/public!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
RUN a2enmod rewrite
RUN service apache2 restart
RUN chown -R www-data:www-data /var/www/html

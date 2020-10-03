# php-laravel
A Dockerfile for [docker](https://www.docker.com/) image. Enviroment ready for [Laravel](https://laravel.com/)

## Dependencies
* [php:7.4.11-apache](https://hub.docker.com/layers/php/library/php/7.4.11-apache/images/sha256-6365e15cdf5bc2c6d00676581fe37ab676cb99b56c4cb0a333562893b96c4394?context=explore) image
### PHP extensions
* GD
* exif
* PDO
* MYSQLi
* Redis


## How to build
To build an image you have to install docker to your local machine and then run following command
``docker build -t php-laravel .``
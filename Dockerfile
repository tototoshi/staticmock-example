FROM php:latest

RUN apt-get update && apt-get install -y git zip unzip

RUN pecl install channel://pecl.php.net/runkit7-4.0.0a2
RUN echo "extension=runkit7.so" > $PHP_INI_DIR/conf.d/runkit.ini

CMD "/bin/bash"

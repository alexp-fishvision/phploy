FROM php:7.1-cli
MAINTAINER Alex Price <alexp@fishvision.com>
ENV DEBIAN_FRONTEND noninteractive

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer creates=/usr/local/bin/composer
RUN php /usr/local/bin/composer global require "fxp/composer-asset-plugin:~1.1.1"
RUN php /usr/local/bin/composer global require "hirak/prestissimo:^0.3"
RUN PHP /USR/local/bin/composer global require "banago/phploy"

#!/bin/bash

# Used inside Bitbucket pipelines. Builds our server for testing stage.

# Update/Install Packages
# use -y flag to prevent "Do you want to continue [Y/n]?" prompt from breaking our build process.
# use -q flag to make apt-get show less infomration in the logs (lessn noise).
apt -qy update
apt -qy install curl git zip unzip

docker-php-ext-install pdo_mysql ctype bcmath zip

# Install Composer
curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install NPM
apt -qy install npm
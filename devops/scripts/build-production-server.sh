#!/bin/bash

# Not used anywhere. Just helps install all what you need on your production server to run a basic laravel project. Run manually.

sudo apt update
sudo apt dist-upgrade
sudo apt install apache2
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt install php8.0
sudo apt install php-curl php-cli php-mbstring git unzip php8.0-mysql php8.0-dom php8.0-xml php8.0-xmlwriter phpunit php-mbstring php-xml
sudo apt install libapache2-mod-php8.0
sudo a2enmod rewrite
sudo /etc/init.d/apache2 restart

# install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

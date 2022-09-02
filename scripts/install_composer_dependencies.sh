#!/bin/bash
sudo amazon-linux-extras install php7.2 -y
cd /var/www/html
yum install wget -y
wget https://getcomposer.org/composer.phar
php composer.phar install



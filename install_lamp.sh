#!/bin/bash
apt update

apt -y upgrade

# set up a silent install of MySQL
dbpass=$1

export DEBIAN_FRONTEND=noninteractive
echo mysql-server-5.7 mysql-server/root_password password $dbpass | debconf-set-selections
echo mysql-server-5.7 mysql-server/root_password_again password $dbpass | debconf-set-selections

# install the LAMP stack
apt update # sometime the first time update will fail...
apt-get -y install apache2 mysql-server-5.7 php7.2 libapache2-mod-php7.2 php7.2-mysql php7.2-curl php7.2-json php7.2-cgi

# write some PHP
echo \<center\>\<h1\>My Demo App\</h1\>\<br/\>\</center\> > /var/www/html/phpinfo.php
echo \<\?php phpinfo\(\)\; \?\> >> /var/www/html/phpinfo.php

# restart Apache
apachectl restart
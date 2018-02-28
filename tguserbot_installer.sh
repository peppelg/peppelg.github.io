#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run this shit as root"
  exit
fi 
sudo apt-get -y install git zip screen curl python php php-mbstring php-xml php-gmp php-curl php-bcmath php-zip php-json
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
git clone https://github.com/peppelg/TGUserbot
cd TGUserbot
composer update
rm LICENSE
rm README.md
sudo apt-get -y install php-cli
echo OK
exit

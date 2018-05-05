#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run this shit as root"
  exit
fi 
sudo apt-get install -y software-properties-common
sudo apt-get install -y language-pack-en-base
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt-get -y install git zip screen curl python php7.2 php7.2-mbstring php7.2-xml php7.2-gmp php7.2-curl php7.2-bcmath php7.2-zip php7.2-json
curl -sS https://getcomposer.org/installer | php7.2 -- --install-dir=/usr/bin --filename=composer
git clone https://github.com/peppelg/TGUserbot
cd TGUserbot
composer update
rm LICENSE
rm README.md
sudo apt-get -y install php7.2-cli
sudo update-alternatives --set php /usr/bin/php7.2
echo OK
exit

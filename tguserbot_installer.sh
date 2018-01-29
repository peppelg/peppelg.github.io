sudo apt-get -y install git zip screen php php-mbstring php-xml php-gmp php-curl php-mcrypt php-bcmath php-zip php-json
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer
git clone https://github.com/peppelg/TGUserbot
cd TGUserbot
composer update
rm LICENSE
rm README.md
echo OK
exit

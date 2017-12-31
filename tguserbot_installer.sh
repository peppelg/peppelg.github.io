sudo -i
apt-get -y install git zip php php-mbstring php-xml php-gmp php-curl php-mcrypt php-bcmath php-zip php-json php-sockets
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer
git clone https://github.com/peppelg/TGUserbot
cd TGUserbot
composer update
echo OK
exit

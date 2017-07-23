apt-get -y install php php-mbstring php-xml php-gmp php-curl php-libsodium php-mcrypt php-bcmath
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer
git clone https://github.com/peppelg/TGUserbot
cd TGUserbot
composer update
echo OK

cp -r /wordpress/* /var/www/wordpress
chown -R www-data:www-data /var/www/*
chmod -R 777 /var/www/*

cd /var/www/wordpress
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod 777 wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

/usr/sbin/php-fpm7.3 -F 

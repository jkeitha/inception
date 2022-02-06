# mv /wp-config.php /var/www/wordpress
chown -R ${NGINX_USER}:${NGINX_USER} /var/www/*
chmod -R 755 /var/www/*
nginx -g "daemon off;"
#/var/www/wordpress
#!/bin/bash

sed -i "s/tobereplaced_database/$MYSQL_DATABASE/g" /var/www/html/wordpress/wp-config.php
sed -i "s/tobereplaced_username/$MYSQL_USER/g" /var/www/html/wordpress/wp-config.php
sed -i "s/tobereplaced_password/$MYSQL_PASSWORD/g" /var/www/html/wordpress/wp-config.php
sed -i "s/tobereplaced_hostname/$MYSQL_HOSTNAME/g" /var/www/html/wordpress/wp-config.php

exec php-fpm7.3 -F

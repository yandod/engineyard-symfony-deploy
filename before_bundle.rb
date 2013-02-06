run "curl -s https://getcomposer.org/installer | php -d allow_url_fopen=on"
run "php -d allow_url_fopen=on composer.phar install"
run "sed 's/root \/data\/symfony_app\/current/\/data\/symfony_app\/current/web' > /etc/nginx/servers/symfony_app.conf > /etc/nginx/servers/symfony_app.conf.tmp; cp /etc/nginx/servers/symfony_app.conf.tmp /etc/nginx/servers/symfony_app.conf''"
# prepare config files
run "cp #{release_path}/app/config/parameters.yml.example #{release_path}/app/config/parameters.yml"
run "ln -s #{release_path}/web/app.php #{release_path}/web/index.php"

# set timezon in php.ini
sudo "echo 'date.timezone = Asia/Tokyo' > /etc/php/cgi-php5.4/ext-active/timezone.ini"
sudo "echo 'date.timezone = Asia/Tokyo' > /etc/php/cli-php5.4/ext-active/timezone.ini"
sudo "echo 'date.timezone = Asia/Tokyo' > /etc/php/fpm-php5.4/ext-active/timezone.ini"

# kick composer install
run "curl -s https://getcomposer.org/installer | php -d allow_url_fopen=on"
run "php -d allow_url_fopen=on composer.phar install"

# change nginx document root for Symfony
# run 'sed  -e \'s/root \/data\/symfony_app\/current;/root \/data\/symfony_app\/current\/web;/\' /etc/nginx/servers/symfony_app.conf > /etc/nginx/servers/symfony_app.conf.tmp'
# run "cp /etc/nginx/servers/symfony_app.conf.tmp /etc/nginx/servers/symfony_app.conf"

FROM ctftraining/base_image_nginx_php_56

LABEL Author="Tiaonmmn.ZMZ"

COPY files /var/www/html/
RUN mv /var/www/html/src/* /var/www/html/ &&\
    mv /var/www/html/flag /flag &&\
    docker-php-ext-install mysql &&\
    apk add mysql mysql-client &&\
    mysql_install_db --user=mysql --datadir=/var/lib/mysql &&\
    sh -c 'mysqld_safe &' &&\
    sleep 10s &&\
    mysqladmin -uroot password '123456' &&\
    mysql -e "source /var/www/html/db.sql;" -uroot -p123456 &&\
    mv /var/www/html/docker-php-entrypoint /usr/local/bin &&\
    chmod +x /usr/local/bin/docker-php-entrypoint &&\
    mv /var/www/html/php.ini /usr/local/etc/php/ &&\
    chown -R www-data:www-data /var/www/html &&\
    chmod 755 /var/www/html/css /var/www/html/js /var/www/html/images
EXPOSE 80

FROM daocloud.io/wrfly/nginx-php-redis:master-be0d38e

LABEL Author="galaxy"

COPY ./files /tmp/

RUN cp -rf /tmp/. /var/www/html \
    && ls /var/www/html  \
    && cp -f /tmp/nginx.conf /etc/nginx/nginx.conf \
    && chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html/save \

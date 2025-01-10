FROM wordpress:php8.2-apache
# Use a single RUN command to minimize image layers
WORKDIR /var/www/html
# Copy application files
COPY . /var/www/html/
RUN set -eux \
    && chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
EXPOSE 80
CMD ["apache2-foreground"]


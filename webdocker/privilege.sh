#!/bin/bash

chown www-data:www-data -R /var/www/soj/app/storage
chown www-data:www-data -R /var/www/soj/uploads
chown www-data:www-data -R /var/www/soj/utility
chown www-data:www-data -R /var/www/soj/pictures
mkdir /var/uoj_data
mkdir /var/uoj_data/upload
chown www-data:www-data -R /var/uoj_data

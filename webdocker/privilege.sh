#!/bin/bash

mkdir /var/www/soj/app/storage
mkdir /var/www/soj/app/storage/tmp
mkdir /var/www/soj/app/storage/submission
mkdir /var/www/soj/uploads
mkdir /var/www/soj/utility
mkdir /var/www/soj/pictures
chown www-data:www-data -R /var/www/soj/app/storage
chown www-data:www-data -R /var/www/soj/uploads
chown www-data:www-data -R /var/www/soj/utility
chown www-data:www-data -R /var/www/soj/pictures
chown www-data:www-data -R /opt/judger/uoj_judger
mkdir /var/uoj_data
mkdir /var/uoj_data/upload
chown www-data:www-data -R /var/uoj_data

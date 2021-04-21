#/bin/bash

cat >/etc/apache2/sites-available/000-uoj.conf <<UOJEOF
<VirtualHost *:80>
    #ServerName local_uoj.ac
    ServerAdmin deb@akioi.com
    DocumentRoot /var/www/soj

    SetEnvIf Request_URI "^/judge/.*$" judgelog
    #LogLevel info ssl:warn
    ErrorLog /root/soj_error.log
    CustomLog /root/soj_judge.log common env=judgelog
    CustomLog /root/soj_access.log combined env=!judgelog

    XSendFile On
    XSendFilePath /var/uoj_data
    XSendFilePath /var/www/soj/app/storage
    XSendFilePath /opt/uoj/judger/uoj_judger/include
</VirtualHost>
UOJEOF
a2ensite 000-uoj.conf && a2dissite 000-default.conf
a2enmod rewrite headers && sed -i -e '172s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf
mkdir --mode=733 /var/lib/php/uoj_sessions && chmod +t /var/lib/php/uoj_sessions
sed -i -e '865a\extension=v8js.so\nextension=yaml.so' /etc/php/7.2/apache2/php.ini
sed -i -e 's/^.*date.timezone =.*$/date.timezone = Asia\/Shanghai/g' /etc/php/7.2/apache2/php.ini
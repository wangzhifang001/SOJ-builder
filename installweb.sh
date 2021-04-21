#!/bin/bash

cd webdocker; rm pack.zip; zip pack.zip *; cd ..
docker build -f webdocker/Dockerfile --no-cache=true .

echo 'sudo docker run -it -v <soj-source>:"/var/www/soj" -v <soj-data>:"/var/uoj_data" -p 80:80  <image-id> /bin/bash'

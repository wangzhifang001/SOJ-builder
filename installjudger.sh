#!/bin/bash

cd judgerdocker; rm pack.zip; zip pack.zip *; cd ..
docker build -f judgerdocker/Dockerfile --no-cache=true .

echo 'sudo docker run -it -v <soj-data>:"/home/judger/uoj_judger/data" <image-id> /bin/bash'

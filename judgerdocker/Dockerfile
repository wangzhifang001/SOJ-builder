FROM ubuntu:18.04
MAINTAINER daklqw <daklqw@outlook.com>
COPY SOJ-judger /home/judger
COPY judgerdocker/pack.zip /root
RUN cd /root && apt update && apt install -y unzip && unzip pack.zip && chmod +x install.sh && ./install.sh
ENV LANG=C.UTF-8 TZ=Asia/Shanghai
CMD /root/up.sh
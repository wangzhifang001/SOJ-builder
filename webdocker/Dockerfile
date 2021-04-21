FROM ubuntu:18.04
MAINTAINER daklqw <daklqw@outlook.com>
VOLUME ["/var/lib/mysql"]
COPY webdocker/pack.zip /root/
COPY SOJ-judger /opt/judger
RUN cd /root && apt update && apt install -y unzip && unzip pack.zip && chmod +x install.sh && ./install.sh
ENV LANG=C.UTF-8 TZ=Asia/Shanghai
EXPOSE 80
CMD /root/up.sh

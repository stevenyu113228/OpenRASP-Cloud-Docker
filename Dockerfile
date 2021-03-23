FROM ubuntu:latest
RUN apt update
RUN apt install vim -y
RUN apt install wget -y
RUN wget https://github.com/baidu/openrasp/releases/download/v1.3.6/rasp-cloud.tar.gz
RUN tar zxvf /rasp-cloud.tar.gz
RUN rm /rasp-cloud.tar.gz
COPY files/app.conf /rasp-cloud-2021-02-07/conf/app.conf

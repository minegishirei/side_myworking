FROM ubuntu

WORKDIR /root
RUN git config --global user.email "minegishirei@gmail.com"
RUN git config --global user.name "minegishirei"
RUN apt update -y
RUN apt install git -y
RUN apt install vim -y

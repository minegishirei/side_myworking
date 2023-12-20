FROM ubuntu

WORKDIR /root
RUN apt update -y
RUN apt install git -y
RUN apt install vim -y

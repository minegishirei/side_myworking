FROM ubuntu

# working dir
WORKDIR /root

# install tool
RUN apt update -y
RUN apt install git -y
RUN apt install vim -y
RUN apt install -y curl

# git config
RUN git config --global user.email "minegishirei@gmail.com"
RUN git config --global user.name "minegishirei"

# vim プラグインインストール
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


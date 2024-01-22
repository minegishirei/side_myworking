FROM ubuntu

# working dir
WORKDIR /code

# update apt
RUN apt update -y

# localization set
RUN apt install language-pack-ja-base language-pack-ja -y
RUN locale-gen ja_JP.UTF-8
ENV LANG=ja_JP.UTF-8

# install tool
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install awscli -y
RUN apt install xsel -y
RUN apt install git -y
RUN apt install vim -y
RUN apt install curl -y 

# install codecommit
RUN apt install python3-pip -y
RUN pip install git-remote-codecommit

# install vim
RUN apt install -y gpg
RUN curl -fsSL https://repo.charm.sh/apt/gpg.key | gpg --dearmor -o /etc/apt/keyrings/charm.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" |  tee /etc/apt/sources.list.d/charm.list
RUN apt update
RUN apt install glow
RUN apt install vim-athena -y

# git config
RUN git config --global user.email "minegishirei@gmail.com"
RUN git config --global user.name "minegishirei"
# 一度入力したパスワードを覚えおいてくれる機能
RUN git config --global credential.helper store

# vim プラグインインストール
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN git clone https://github.com/tomasiser/vim-code-dark.git ~/.vim/bundle/vim-code-dark.git


RUN apt install dos2unix -y
RUN dos2unix ~/.vimrc





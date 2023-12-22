FROM ubuntu

# working dir
WORKDIR /code

# install tool
RUN apt update -y
RUN apt install git -y
RUN apt install vim -y
RUN apt install -y curl

# git config
RUN git config --global user.email "minegishirei@gmail.com"
RUN git config --global user.name "minegishirei"

# vim プラグインインストール
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN git clone https://github.com/tomasiser/vim-code-dark.git ~/.vim/bundle/vim-code-dark.git
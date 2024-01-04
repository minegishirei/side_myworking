FROM ubuntu

# working dir
WORKDIR /code

# install tool
RUN apt update -y
RUN apt install git -y
RUN apt install vim -y
RUN apt install curl -y 
RUN apt install vim-athena -y

#ENV TZ=Asia/Tokyo
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#RUN apt install awscli -y

RUN apt install python3-pip -y
RUN pip install git-remote-codecommit

# install glow
RUN apt install -y gpg
RUN curl -fsSL https://repo.charm.sh/apt/gpg.key | gpg --dearmor -o /etc/apt/keyrings/charm.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" |  tee /etc/apt/sources.list.d/charm.list
RUN apt update
RUN apt install glow

# git config
RUN git config --global user.email "minegishirei@gmail.com"
RUN git config --global user.name "minegishirei"

# vim プラグインインストール
#RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN git clone https://github.com/tomasiser/vim-code-dark.git ~/.vim/bundle/vim-code-dark.git


FROM archlinux

# add user mine
ARG USERNAME=mine
ARG GROUPNAME=mine
ARG UID=1000
ARG GID=1000
ARG PASSWORD=mine
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID -G sudo $USERNAME && \
    echo $USERNAME:$PASSWORD | chpasswd && \
    echo "$USERNAME   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER $USERNAME
WORKDIR /home/$USERNAME/

RUN pacman -Syy  --noconfirm
RUN pacman -Syyu  --noconfirm
RUN pacman -S neovim  --noconfirm
RUN pacman -S fish  --noconfirm

RUN pacman -S git --noconfirm
RUN git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

COPY ./myworking /myworking
WORKDIR /myworking

# personal settings
RUN git config --global user.email "minegishirei@gmail.com"
RUN git config --global user.name "minegishirei"
RUN git config --global credential.helper store

# bash settings
RUN cat /myworking/myalias.sh > ~/.bashrc
#RUN ./clone.sh
#RUN ./myalias.sh
RUN set -o vi

CMD ["fish"]




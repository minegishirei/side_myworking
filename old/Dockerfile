FROM archlinux

WORKDIR /code
RUN pacman -Syy         --noconfirm
RUN pacman -Syyu        --noconfirm
RUN pacman -S neovim    --noconfirm
RUN pacman -S fish      --noconfirm
RUN pacman -S gcc       --noconfirm
RUN pacman -S git       --noconfirm
RUN git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# personal settings
RUN git config --global user.email "minegishirei@gmail.com"
RUN git config --global user.name "minegishirei"
RUN git config --global credential.helper store

# bash settings
RUN set -o vi
RUN nvim -c "qa!"


# unknown error


RUN pacman -Syy --noconfirm && pacman -Syu --noconfirm

RUN pacman -S thefuck   --noconfirm
RUN pacman -S exa --noconfirm






FROM archlinux

RUN pacman -Syy  --noconfirm
RUN pacman -Syyu  --noconfirm
RUN pacman -S neovim  --noconfirm

RUN pacman -S git --noconfirm
RUN git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

WORKDIR /myworking

# personal settings
RUN git config --global user.email "minegishirei@gmail.com"
RUN git config --global user.name "minegishirei"
RUN git config --global credential.helper store

CMD ["sh"]




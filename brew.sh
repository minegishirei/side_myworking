#!/bin/bash

# check if brew
install_if_missing() {
  if ! brew list "$1" &> /dev/null; then
    echo "$1 が見つかりません。インストールを開始します..."
    brew install "$1" "${@:2:3}"
  else
    echo "$1 はすでにインストールされています。スキップします。"
  fi
}

# install brew
if ! command -v "brew" &> /dev/null; then
    echo "brew が見つかりません。インストールを開始します..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo >> ~/.bashrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
else
    echo "brew はすでにインストールされています。スキップします。"
fi

# install packages
install_if_missing "awscli"
install_if_missing "sqlmap"
install_if_missing "gobuster"
install_if_missing "git"
install_if_missing "gh"
install_if_missing "eza"
install_if_missing "tmux"
install_if_missing "fzf"
install_if_missing "ccat"
install_if_missing "fswatch"

## for editor
install_if_missing visual-studio-code --cask
code --install-extension vscodevim.vim
code --install-extension hediet.vscode-drawio

# .bashrc
source ~/side_myworking/dotfiles/.bashrc

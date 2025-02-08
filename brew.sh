#!/bin/bash

# install brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 関数：コマンドがインストールされているかチェック
install_if_missing() {
  if ! command -v "$1" &> /dev/null; then
    echo "$1 が見つかりません。インストールを開始します..."
    brew install "$1"
  else
    echo "$1 はすでにインストールされています。スキップします。"
  fi
}

## for editor
brew install --cask visual-studio-code

### Install Extensions
code --install-extension vscodevim.vim
code --install-extension hediet.vscode-drawio


# awscli のインストール
install_if_missing "awscli"

# sqlmap のインストール
install_if_missing "sqlmap"

# gobuster のインストール
install_if_missing "gobuster"

# git のインストール
install_if_missing "git"

# gh (GitHub CLI) のインストール
install_if_missing "gh"

# exa のインストール
install_if_missing "exa"

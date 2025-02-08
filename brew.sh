#!/bin/bash



# 関数：コマンドがインストールされているかチェック
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
else
    echo "brew はすでにインストールされています。スキップします。"
fi

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
# eza のインストール
install_if_missing "eza"
## for editor
install_if_missing visual-studio-code --cask
### Install Extensions
code --install-extension vscodevim.vim
code --install-extension hediet.vscode-drawio

install_if_missing "ccat"


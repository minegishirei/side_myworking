#!/bin/bash

# もし `side_myworking` が存在すれば削除
[ -d side_myworking ] && rm -rf side_myworking/*

# side_myworking本体をclone
git clone https://github.com/minegishirei/side_myworking.git
cd side_myworking


# go to home dir
cd ~

# 対象となる .bashrc ファイルのパス
BASHRC_FILE="$HOME/.bashrc"
# 追加したい設定内容
FILE_TO_INCLUDE="~/side_myworking/dotfiles/.bashrc"

# .bashrcに既に #working_alreadysetup が含まれているか確認
if ! grep -q "#working_alreadysetup" "$BASHRC_FILE"; then
  echo "#working_alreadysetup" >> "$BASHRC_FILE"
  echo "source $FILE_TO_INCLUDE" >> "$BASHRC_FILE"
  echo ".bashrc に $FILE_TO_INCLUDE を追加しました。"
else
  echo ".bashrc には既に #working_alreadysetup が設定されています。"
fi

# MacOSであればsettings.jsonを反映させる
if [[ "$(uname)" == "Darwin" ]]; then
  echo "This is macOS"
  rm  "$HOME/Library/Application Support/Code/User/settings.json"
  ln -s  ~/side_myworking/dotfiles/settings.json "$HOME/Library/Application Support/Code/User/settings.json"

  rm  "$HOME/Library/Application Support/Code/User/keybindings.json"
  ln -s  ~/side_myworking/dotfiles/keybindings.json "$HOME/Library/Application Support/Code/User/keybindings.json"
else
  echo "This is not macOS"
fi

##############
#### Brew ####
##############

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
install_if_missing "starship"
install_if_missing "driftctl"
install_if_missing "btop"
install_if_missing "ctop"
install_if_missing "yazi"
install_if_missing "terraform-tui"

## for editor
install_if_missing visual-studio-code --cask
code --install-extension vscodevim.vim
code --install-extension hediet.vscode-drawio
code --install-extension 4ops.terraform

# .bashrc
source ~/side_myworking/dotfiles/.bashrc



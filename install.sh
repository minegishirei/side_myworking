#!/bin/bash

# go to home dir
cd ~

#ln -s ~/side_myworking/dotfiles/.zprofile ~/.zshrc
#rm "$HOME/Library/Application Support/Code/User/settings.json"
#ln -s ~/side_myworking/dotfiles/settings.json "$HOME/Library/Application Support/Code/User/settings.json"

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

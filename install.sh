#!/bin/bash

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

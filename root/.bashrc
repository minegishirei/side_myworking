#!/bin/bash
set -o vi
git clone https://github.com/minegishirei/techblog.git
git clone https://github.com/minegishirei/myworking.git
$COMMIT_MESSAGE="save"
alias ggit='git add . && git commit -m $COMMIT_MESSAGE && git push'

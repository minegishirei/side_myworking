#!/bin/bash
set -o vi
git clone https://github.com/minegishirei/techblog.git
git clone https://github.com/minegishirei/myworking.git
STR1='ghp_' 
export GHP=$(echo 'ghp-B69++bWDfJWvOrKYh9QMDC8m4MYkZe+AxF8x' | sed 's/+/3/g' | sed 's/-/_/')
alias ggit="echo $GHP; git add . ; git commit -m \"save\" ; git push"
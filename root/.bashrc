#!/bin/bash
set -o vi
git clone https://github.com/minegishirei/techblog.git
git clone https://github.com/minegishirei/myworking.git
STR1='ghp_' 
export GHP=$(echo 'ghp-B69++bWDfJWvOrKYh9QMDC8m4MYkZe+AxF8x' | sed 's/+/3/g' | sed 's/-/_/')
alias ggit="echo $GHP; git add . ; git commit -m \"save\" ; git push"
alias cp='cp -i'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias mv='mv -i'
alias rm='rm -i'
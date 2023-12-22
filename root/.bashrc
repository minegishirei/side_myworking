#!/bin/bash
set -o vi
$COMMIT_MESSAGE="save"
alias ggit='git add . && git commit -m $COMMIT_MESSAGE && git push'
alias s="source"
vim -c 'PlugInstall --sync'  -c '+qa'
#clear
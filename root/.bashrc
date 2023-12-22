#!/bin/bash
set -o vi
$COMMIT_MESSAGE="save"
alias ggit='git add . && git commit -m $COMMIT_MESSAGE && git push'

vim +PluginInstall +qall
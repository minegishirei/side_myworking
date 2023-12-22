#!/bin/bash
set -o vi
$COMMIT_MESSAGE="save"
alias ggit='git add . && git commit -m $COMMIT_MESSAGE && git push'
alias s="source"
ln -s ~/.vim/bundle/vim-code-dark.git/colors/codedark.vim ~/.vim/colors/codedark.vim
vim +'PlugInstall --sync' +qa
#clear
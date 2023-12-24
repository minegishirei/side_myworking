#!/bin/bash
set -o vi
$COMMIT_MESSAGE="save"
alias ggit='git add . && git commit -m $COMMIT_MESSAGE && git push'
alias s="source"
vim +'PlugInstall --sync' +qa
echo "" >> ~/.vimrc
echo "colorscheme codedark" >> ~/.vimrc


echo $MODE

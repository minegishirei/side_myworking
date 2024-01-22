#!/bin/bash
set -o vi
alias ggit="git add . && git commit -m 'save' && git push"
alias s="source"
vim +'PlugInstall --sync' +qa
echo "" >> ~/.vimrc
echo "colorscheme codedark" >> ~/.vimrc


source /code/personal.sh
echo $MODE
if [ "$MODE" = "PERSONAL" ]; then
    source /code/personal.sh
fi

if [ "$MODE" = "BUSINESS"]
    source /code/business.sh
fi
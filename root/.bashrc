#!/bin/bash
set -o vi
alias ggit="git add . && git commit -m 'save' && git push"
alias s="source"
echo "" >> ~/.vimrc
echo "colorscheme codedark" >> ~/.vimrc


echo $MODE
if [ "$MODE" = "PERSONAL" ]; then
    source /code/personal.sh
else
    source /code/business.sh
fi
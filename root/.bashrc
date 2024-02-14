set -o vi
alias ggit="git add . && git commit -m 'save' && git push"
alias s="source"
#vim +'PlugInstall --sync' +qa
#echo "" >> ~/.vimrc
#echo "colorscheme codedark" >> ~/.vimrc
cat init.lua >> ~/.config/nvim/init.lua #need comment
source /code/personal.sh #need comment
eval $(thefuck --alias) #need comment
alias ls="exa" #need comment


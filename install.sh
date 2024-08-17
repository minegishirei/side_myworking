
# security tools
brew install sqlmap
brew install gobuster


# vim plugin manager
## color schema
git clone https://github.com/tomasiser/vim-code-dark.git ~/.vim/bundle/vim-code-dark.git
ln -s ~/.vim/bundle/vim-code-dark.git/colors/codedark.vim ~/.vim/colors/codedark.vim
## Nerd Font Install
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
brew install font-hack-nerd-font
## Plugin Install
vim +'PlugInstall --sync' +qa
## Linter
brew install actionlint


# git
brew install gh




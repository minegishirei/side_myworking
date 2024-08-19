
ln -s ~/side_myworking/dotfiles/.zprofile ~/.zshrc
rm "$HOME/Library/Application Support/Code/User/settings.json"
ln -s ~/side_myworking/dotfiles/settings.json "$HOME/Library/Application Support/Code/User/settings.json"

# for editor
brew install --cask visual-studio-code

# vim plugin manager
## color schema
#git clone https://github.com/tomasiser/vim-code-dark.git ~/.vim/bundle/vim-code-dark.git
#ln -s ~/.vim/bundle/vim-code-dark.git/colors/codedark.vim ~/.vim/colors/codedark.vim
## Nerd Font Install
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#brew install font-hack-nerd-font
## Plugin Install
#vim +'PlugInstall --sync' +qa
## Linter
#brew install actionlint
#mv ~/.config/nvim ~/.config/nvim.bak
#mv ~/.local/share/nvim ~/.local/share/nvim.bak
#mv ~/.local/state/nvim ~/.local/state/nvim.bak
#mv ~/.cache/nvim ~/.cache/nvim.bak
#brew install neovim
#git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
# remove template's git connection to set up your own later
#rm -rf ~/.config/nvim/.git

# for git authentication
brew install gh

# for work
brew install awscli

# for security tools
brew install sqlmap
brew install gobuster
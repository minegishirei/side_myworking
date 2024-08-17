

## install brew on mac

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/minegishirei/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
brew install git
git clone https://github.com/minegishirei/side_myworking.git
```

## save

```sh
ln -s ~/side_myworking/dotfiles/.vimrc ~/.vimrc
ln -s ~/side_myworking/dotfiles/.zprofile ~/.zshrc
```







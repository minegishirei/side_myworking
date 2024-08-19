

## install brew on mac

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/minegishirei/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
brew install git
git clone https://github.com/minegishirei/side_myworking.git
```

## インストーラー起動

```sh
source ~/side_myworking/install.sh
```

## save

```sh
ln -s ~/side_myworking/dotfiles/.zprofile ~/.zshrc
rm "$HOME/Library/Application Support/Code/User/settings.json"
ln -s ~/side_myworking/dotfiles/settings.json "$HOME/Library/Application Support/Code/User/settings.json"
```

## to windows

cat ${HOME}¥side_myworking¥dotfiles¥settings.json

```ps1

New-Item -Path "${HOME}¥side_myworking¥dotfiles¥settings.json" -ItemType SymbolicLink -Target "${HOME}¥side_myworking¥.vscode¥settings.json"
```







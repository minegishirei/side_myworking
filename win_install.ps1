#!/usr/bin/env pwsh
cp ${HOME}\side_myworking\dotfiles\settings.json $env:APPDATA\Code\User\settings.json
cp ${HOME}\side_myworking\dotfiles\keybindings.json $env:APPDATA\Code\User\keybindings.json

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

############################
# Git Repository
############################

$RepoName = "side_myworking"
$RepoUrl  = "https://github.com/minegishirei/side_myworking.git"
$RepoPath = Join-Path $HOME $RepoName

# 既存ディレクトリ削除
if (Test-Path $RepoPath) {
    Write-Host "既存の $RepoName を削除します"
    Remove-Item -Recurse -Force $RepoPath
}

# clone
git clone $RepoUrl $RepoPath

############################
# .bashrc 設定
############################

$BashrcFile     = Join-Path $HOME ".bashrc"
$IncludeFile   = "~/side_myworking/dotfiles/.bashrc"
$Marker        = "#working_alreadysetup"

if (!(Test-Path $BashrcFile)) {
    New-Item -ItemType File -Path $BashrcFile | Out-Null
}

$BashrcContent = Get-Content $BashrcFile -ErrorAction SilentlyContinue

if ($BashrcContent -notcontains $Marker) {
    Add-Content $BashrcFile $Marker
    Add-Content $BashrcFile "source $IncludeFile"
    Write-Host ".bashrc に $IncludeFile を追加しました"
} else {
    Write-Host ".bashrc は既に設定済みです"
}

############################
# macOS 判定 & VSCode 設定
############################

if ($IsMacOS) {
    Write-Host "This is macOS"

    $VSCodeUserDir = "$HOME/Library/Application Support/Code/User"

    $SettingsJson     = Join-Path $VSCodeUserDir "settings.json"
    $KeybindingsJson  = Join-Path $VSCodeUserDir "keybindings.json"

    Remove-Item -Force $SettingsJson     -ErrorAction SilentlyContinue
    Remove-Item -Force $KeybindingsJson  -ErrorAction SilentlyContinue

    New-Item -ItemType SymbolicLink `
        -Path $SettingsJson `
        -Target "$RepoPath/dotfiles/settings.json" | Out-Null

    New-Item -ItemType SymbolicLink `
        -Path $KeybindingsJson `
        -Target "$RepoPath/dotfiles/keybindings.json" | Out-Null
}
else {
    Write-Host "This is not macOS"
}

############################
# Homebrew
############################

function Install-IfMissing {
    param(
        [Parameter(Mandatory)]
        [string]$Name,

        [string[]]$Args
    )

    if (-not (brew list $Name 2>$null)) {
        Write-Host "$Name が見つかりません。インストールします"
        brew install $Name @Args
    }
    else {
        Write-Host "$Name は既にインストールされています"
    }
}

# brew インストール
if (-not (Get-Command brew -ErrorAction SilentlyContinue)) {
    Write-Host "brew が見つかりません。インストールします"

    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    Add-Content ~/.bashrc ''
    Add-Content ~/.bashrc 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'
}
else {
    Write-Host "brew は既にインストールされています"
}

############################
# Brew Packages
############################

Install-IfMissing awscli
Install-IfMissing sqlmap
Install-IfMissing gobuster
Install-IfMissing git
Install-IfMissing gh
Install-IfMissing eza
Install-IfMissing tmux
Install-IfMissing fzf
Install-IfMissing ccat
Install-IfMissing fswatch
Install-IfMissing starship
Install-IfMissing driftctl
Install-IfMissing btop
Install-IfMissing ctop
Install-IfMissing yazi
Install-IfMissing terraform
Install-IfMissing terraform-tui

brew install --cask maccy
Install-IfMissing localstack/tap/localstack-cli

############################
# VSCode
############################

Install-IfMissing visual-studio-code @("--cask")

$Extensions = @(
    "4ops.terraform"
    "bierner.markdown-mermaid"
    "github.copilot"
    "github.copilot-chat"
    "google.geminicodeassist"
    "hediet.vscode-drawio"
    "ms-python.debugpy"
    "ms-python.python"
    "ms-python.vscode-pylance"
    "ms-python.vscode-python-envs"
    "ms-vscode-remote.remote-containers"
    "ms-vscode.remote-explorer"
    "ms-vscode.remote-server"
    "sankooc.pcapviewer"
    "vscodevim.vim"
    "vue.volar"
)

foreach ($ext in $Extensions) {
    code --install-extension $ext
}

############################
# bashrc 再読み込み
############################

bash -c "source ~/side_myworking/dotfiles/.bashrc"

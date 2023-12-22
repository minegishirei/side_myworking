set number
" スワップファイルを作成しない
set noswapfile
" 日本語対応
set enc=utf-8

" jjでESC可能
inoremap <silent> jj <ESC>

map <S-h> 10hzz
map <S-j> 5jzz
map <S-k> 10kzz
map <S-l> 5lzz

map h hzz
map j jzz
map k kzz
map l lzz

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on
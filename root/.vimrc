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

map <Space>o :NERDTreeToggle<CR>

" 以下vimプラグイン
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" gitの機能を使う
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
" ファイルツリーを表示する
Plugin 'scrooloose/nerdtree'
" vscode likeなカラーテーマに変更する
Plugin 'tomasiser/vim-code-dark'

call vundle#end()


syntax enable

set t_Co=256
set t_ut=
colorscheme codedark


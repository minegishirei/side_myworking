set number
" スワップファイルを作成しない
set noswapfile
" 日本語対応
set enc=utf-8

" jjでESC可能
inoremap <silent> jj <ESC>

Plugin 'VundleVim/Vundle.vim'

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on
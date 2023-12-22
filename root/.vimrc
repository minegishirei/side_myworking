set number
" スワップファイルを作成しない
set noswapfile
" 日本語対応
set enc=utf-8

" jjでESC可能
inoremap <silent> jj <ESC>

" プラグイン追加
call plug#begin('~/vimfiles/plugged')
Plug 'preservevim/NERDTree'
call plug#end()
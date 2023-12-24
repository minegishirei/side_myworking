
" ここにインストールしたいプラグインを列挙する
""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" Plug 'hoge/huga'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" gitの機能を使う
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ファイルツリーを表示する
Plug 'scrooloose/nerdtree'

" vscode likeなカラーテーマに変更する
Plug 'tomasiser/vim-code-dark'
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""


let NERDTreeShowHidden = 1

let g:airline#extensions#tabline#enabled = 1
"" vim-airline
" ステータスラインに表示する項目を変更する
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ ['z']
  \ ]
let g:airline_section_c = '%t %M'
let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v'
" 変更がなければdiffの行数を表示しない
let g:airline#extensions#hunks#non_zero_only = 1 

" タブラインの表示を変更する
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_close_button = 0

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



set t_Co=256
set t_ut=


set hlsearch
set expandtab

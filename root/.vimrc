
" ここにインストールしたいプラグインを列挙する
""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" gitの機能を使う
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ファイルツリーを表示する
Plug 'scrooloose/nerdtree'

" vscode likeなカラーテーマに変更する
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" fの日本語か
Plug 'juro106/ftjpn'

" マークダウンプレビュー機能
Plug 'skanehira/preview-markdown.vim'
let g:preview_markdown_parser = 'glow'

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""

" 隠しファイルを表示させる
let NERDTreeShowHidden = 1

let g:airline#extensions#tabline#enabled = 1
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



" 行番号を表示
set number
" スワップファイルを作成しない
set noswapfile
" 日本語対応
set enc=utf-8

" jjでESC可能
inoremap <silent> jj <ESC>

" Shiftで大幅移動
map <S-h> 10hzz
map <S-j> 5jzz
map <S-k> 10kzz
map <S-l> 5lzz

" 移動時にセンター化
map h hzz
map j jzz
map k kzz
map l lzz

" ファイルツリー表示
map <Space>o :NERDTreeToggle<CR>

map <Space>m :PreviewMarkdown right<CR>

" 画面カラー変更
set t_Co=256
set t_ut=

" 検索ハイライト化
set hlsearch
set expandtab

" クリップボードからのコピー有効か
set clipboard=unnamedplus

" fの日本語化
let g:ftjpn_key_list = [
    \ ['.', '。', '．'],
    \ [',', '、', '，'],
    \ ['h', 'は'],
    \ ['g', 'が', 'ぎ'],
    \ ['n', 'の', 'に', 'な', 'ぬ', 'ね'],
    \ ['w', 'を'],
    \
    \ ['t', 'と'],
    \ ['d', 'で'],
    \ ['i', '何'],
    \ ['c', '（', '）'],
    \ ['k', '「', '」', '『', '』', '【', '】'],
    \ ['!', '！'],
    \ ['?', '？'],
    \ [';', '!', '?', '^', '$', '#', ':', '&', '%', '~', '*', '！', '？'],
    \ ]
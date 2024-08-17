call plug#begin()
" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" file tree
Plug 'scrooloose/nerdtree'
" vscode like
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joker1007/vim-markdown-quote-syntax'
" f to japanese
Plug 'juro106/ftjpn'
" markdown preview
Plug 'skanehira/preview-markdown.vim'
let g:preview_markdown_parser = 'glow'
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""
set fileformat=unix
" open hidden file
let NERDTreeShowHidden = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ ['z']
  \ ]
let g:airline_section_c = '%t %M'
let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v'
let g:airline#extensions#hunks#non_zero_only = 1 
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_close_button = 0
" tab is 4 space
:set ts=4
" column number
set number
set noswapfile
set enc=utf-8
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
map <Space>m :PreviewMarkdown right<CR>
set t_Co=256
set t_ut=
set hlsearch
set expandtab
set clipboard&
set clipboard+=unnamedplus
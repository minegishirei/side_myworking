
"" Status Bars
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
let g:airline#extensions#tabline#enabled = 1

"" Color Schema
call plug#begin()
Plug 'tomasiser/vim-code-dark'
call plug#end()
colorscheme codedark

"" NERDTree
call plug#begin()
Plug 'preservim/nerdtree'
call plug#end()
nnoremap :E :NERDTree<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
map <Space>o :NERDTreeToggle<CR>:NERDTreeToggle<CR>
"" Show dotfile
let NERDTreeShowHidden=1

"" Start Vim with NERDTree Open
autocmd VimEnter * NERDTree

"" tab is 4 space
:set ts=4

"" clipboard
set clipboard+=unnamed

"" column number
set number
set noswapfile
set enc=utf-8
inoremap <silent> jj <ESC>
""map <S-h> 10hzz
map <S-h> :NERDTreeToggle<CR>:NERDTreeToggle<CR>
map <S-j> 5jzz
map <S-k> 10kzz
map <S-l> 5lzz
map h hzz
map j jzz
map k kzz
map l lzz

call plug#begin()
Plug 'svermeulen/vim-subversive'
call plug#end()

"" s for substitute
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)

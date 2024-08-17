
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


" Start Vim with NERDTree Open
autocmd VimEnter * NERDTree

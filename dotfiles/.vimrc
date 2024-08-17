
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

"" File Tree
call plug#begin()
Plug 'lambdalisue/fern.vim'
call plug#end()
nnoremap :E :Fern . -reveal=% -drawer -toggle -width=40<CR>
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>



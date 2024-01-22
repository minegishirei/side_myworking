
set fileformat=unix

" �����ɃC���X�g�[���������v���O�C����񋓂���
""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" git�̋@�\���g��
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" �t�@�C���c���[��\������
Plug 'scrooloose/nerdtree'

" vscode like�ȃJ���[�e�[�}�ɕύX����
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joker1007/vim-markdown-quote-syntax'

" f�̓��{�ꂩ
Plug 'juro106/ftjpn'

" �}�[�N�_�E���v���r���[�@�\
Plug 'skanehira/preview-markdown.vim'
let g:preview_markdown_parser = 'glow'

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""
set fileformat=unix


" �B���t�@�C����\��������
let NERDTreeShowHidden = 1

let g:airline#extensions#tabline#enabled = 1
" �X�e�[�^�X���C���ɕ\�����鍀�ڂ�ύX����
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ ['z']
  \ ]
let g:airline_section_c = '%t %M'
let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v'

" �ύX���Ȃ����diff�̍s����\�����Ȃ�
let g:airline#extensions#hunks#non_zero_only = 1 

" �^�u���C���̕\����ύX����
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_close_button = 0

" tab��space��4��
:set ts=4
" �s�ԍ���\��
set number
" �X���b�v�t�@�C�����쐬���Ȃ�
set noswapfile
" ���{��Ή�
set enc=utf-8

" jj��ESC�\
inoremap <silent> jj <ESC>

" Shift�ő啝�ړ�
map <S-h> 10hzz
map <S-j> 5jzz
map <S-k> 10kzz
map <S-l> 5lzz

" �ړ����ɃZ���^�[��
map h hzz
map j jzz
map k kzz
map l lzz

" �t�@�C���c���[�\��
map <Space>o :NERDTreeToggle<CR>

map <Space>m :PreviewMarkdown right<CR>

" ��ʃJ���[�ύX
set t_Co=256
set t_ut=

" �����n�C���C�g��
set hlsearch
set expandtab

" �N���b�v�{�[�h����̃R�s�[�L����
set clipboard&
set clipboard+=unnamedplus

" f�̓��{�ꉻ
let g:ftjpn_key_list = [
    \ ['.', '�B', '�D'],
    \ [',', '�A', '�C'],
    \ ['h', '��'],
    \ ['g', '��', '��'],
    \ ['n', '��', '��', '��', '��', '��'],
    \ ['w', '��'],
    \
    \ ['t', '��'],
    \ ['d', '��'],
    \ ['i', '��'],
    \ ['c', '�i', '�j'],
    \ ['k', '�u', '�v', '�w', '�x', '�y', '�z'],
    \ ['!', '�I'],
    \ ['?', '�H'],
    \ [';', '!', '?', '^', '$', '#', ':', '&', '%', '~', '*', '�I', '�H'],
    \ ]
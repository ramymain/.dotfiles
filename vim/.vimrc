"
" ~/.vimrc
"

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sbdchd/neoformat'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'

Plug 'Yggdroot/indentLine'

Plug 'gruvbox-community/gruvbox'

call plug#end()

set number
set relativenumber
set so=7
set noerrorbells
set novisualbell
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set smartcase
set nowrap
set signcolumn=yes
set incsearch
set autoread " automatically reload files upon change outside VIM

set colorcolumn=80,120

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" fzf navigation.
nnoremap <silent> ff :Files<CR>
nnoremap <silent> fb :Buffers<CR>
nnoremap <silent> fg :Rg<CR>
nnoremap <silent> fh :Helptags<CR>

colorscheme gruvbox
set background=dark

let mapleader = " "
"
" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

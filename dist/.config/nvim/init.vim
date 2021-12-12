set scrolloff=8
set number
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set encoding=utf8
let g:airline_powerline_fonts = 1

call plug#begin("~/.vim/plugged")
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

if (has("termguicolors"))
	set termguicolors
endif

syntax enable
colorscheme dracula

nnoremap <leader>pv :Vex<CR>
nnoremap <leader>pf :Files<CR>
inoremap jk <esc>:w<CR>
nnoremap <C-p> :GFiles<CR>

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = ['node_modules']
let NERDTreeStatusLine='NERDTree'
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-a> :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
split term://bin/bash
resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
let g:prettier#autoformat_config_present = 1
let g:prettier#config#config_precedence = 'prefer-file'

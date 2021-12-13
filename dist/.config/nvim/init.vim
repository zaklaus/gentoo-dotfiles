set scrolloff=8
set number
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set encoding=utf8
set foldenable
set foldmethod=manual
set mouse=a
let g:airline_powerline_fonts = 0

call plug#begin("~/.vim/plugged")
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'prabirshrestha/vim-lsp'

Plug 'Shougo/deoplete.nvim'
Plug 'lighttiger2505/deoplete-vim-lsp'
Plug 'mhartington/oceanic-next'
call plug#end()

if (has("termguicolors"))
	set termguicolors
endif

syntax enable
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

let g:airline_theme='oceanicnext'

nnoremap <leader>pv :Vex<CR>
nnoremap <leader>pf :Files<CR>
inoremap jk <esc>:w<CR>
nnoremap <C-p> :GFiles<CR>

inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
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
split term:///bin/bash
resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
nnoremap <nowait><silent> <C-C> :noh<CR>
set wildcharm=<C-Z>
set wildchar=<Tab> wildmenu wildmode=full
nnoremap <F10> :b <C-Z>
let g:prettier#autoformat_config_present = 1
let g:prettier#config#config_precedence = 'prefer-file'

" setting with vim-lsp
if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(
      \   lsp#utils#find_nearest_parent_file_directory(
      \     lsp#utils#get_buffer_path(), ['.ccls', 'compile_commands.json', '.git/']))},
      \ 'initialization_options': {
      \   'highlight': { 'lsRanges' : v:true },
      \   'cache': {'directory': stdpath('cache') . '/ccls' },
      \ },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif

call plug#begin(stdpath('data') . '/plugged')
Plug 'preservim/nerdtree'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-clangx'

Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
call plug#end()

let g:deoplete#enable_at_startup = 1

syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set copyindent

set number
set mouse=a
set cursorline
set wildmenu
set showmatch
set laststatus=2
set nobackup
set noswapfile

set incsearch
set hlsearch
set ignorecase
set smartcase

" don't use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" additionals
inoremap jj <Esc>
nnoremap <F8> :noh<CR>

" nerdtree
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1

" fzf
if (executable('ag'))
	let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif

nnoremap <C-P> :Files<CR>

" emmet
let g:user_emmet_settings = {
			\ 'javascript': { 'extends': 'jsx', },
			\ 'typescript': { 'extends': 'tsx', },}

" ale
let g:ale_fix_on_save = 1

let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 1000

let g:ale_sign_error = 'X\ '
let g:ale_sign_warning = 'W\ '

let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'] }

" YCM
let ycm_trigger_key = '<C-n>'
let g:ycm_auto_trigger = 0
let g:ycm_key_invoke_completion = ycm_trigger_key

let g:ycm_key_list_select_completion = ['<TAB>', '<C-j>']
inoremap <expr> ycm_trigger_key pumvisible() ? "<C-j>" : ycm_trigger_key;

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

execute pathogen#infect()
call pathogen#helptags()
set t_Co=256
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set smartcase
set ignorecase
set number
set wrapscan
set incsearch
set hlsearch
set mouse=a
set clipboard=unnamedplus

let loaded_matchit = 1
syntax on
color php

vmap <C-c> "+y
vmap y y']
nmap p p']
nmap <S-p> p10<C-e>
nnoremap mc y'm']
nmap mc y'm']
nnoremap mp y'm']p
nmap mp y'm']p
nnoremap m<S-p> y'm']p']10<C-e>
nmap m<S-p> y'm']p']10<C-e>
nnoremap <expr> gV    "`[".getregtype(v:register)[0]."`]"

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:airline_theme = 'powerlineish'

set wildignore+=*/community/**
set wildignore+=*/f3/**
set wildignore+=*/db_design/**
set wildignore+=*/vagrant/**
set wildignore+=*/vendor/**

let mapleader = '\'

inoremap <leader>p <ESC>:call PhpDocSingle()<CR>i
nnoremap <leader>p :call PhpDocSingle()<CR>i
vnoremap <leader>p :call PhpDocRange()<CR>i
let g:pdv_cfg_FuncCommentEnd = ""
let g:pdv_cfg_autoEndFunction = 0
let g:pdv_cfg_autoEndClass = 0
let g:pdv_cfg_CommentTail = "*/\n"
nnoremap <C-H> :Php <q-args>    


let g:vdebug_options = {
\ 'server': '0.0.0.0',
\ 'watch_window_style' : 'compact'
\}

filetype plugin on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

map <silent> <C-Right> :tabn<CR>
map <silent> <C-Left> :tabp<CR>
map <silent> <C-Up> :tabnew<CR>
map <silent> <C-Down> :q<CR>
map <c-x><c-o> <c-space>

map <silent> <S-Right> :wincmd l<CR>
map <silent> <S-Left> :wincmd h<CR>
map <silent> <S-Down> :wincmd j<CR>
map <silent> <S-Up> :wincmd k<CR>

map <leader>t= :Tabularize /=<CR>
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

command LB Breakpoint
map -a :call SyntaxAttr()<CR>
map <C-t> :TagbarToggle <CR><C-w><C-w>
map <C-n> :NERDTreeToggle<CR>

inoremap kj <Esc>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

command CP :call ToggleCopy()
map <leader>c :call ToggleCopy()<CR>

function! ToggleCopy()
    if &mouse == 'a'
        set mouse=
        set nonumber
    else
        set mouse=a
        set number
    endif
endfunction

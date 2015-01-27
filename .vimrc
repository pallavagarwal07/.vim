"syntax on
"set background=dark
"set rnu                 " Relative Numbering on (A plugin takes higher priority and this isn't needed)
call pathogen#infect()   " Calls pathogen plugin manager
syntax enable 

set shiftwidth=4
set tabstop=4
set expandtab

filetype plugin indent on
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hidden              " hide without confirmation for saving buffers when they are abandoned
set nu                  " Turn on line numbering
set foldmethod=syntax   " Syntax folds form automatically
set foldlevel=99999     " No folds folded by default
set so=10               " Scroll Offset (amount to leave above and below cursor)
set t_Co=256            " Set terminal colors = 256
nnoremap ; : 
map <silent> <leader><C-x> :NERDTreeToggle<CR>
let g:EasyMotion_smartcase = 1
nmap ,, <leader><leader>s
nnoremap <F5> :buffers<CR>:buffer<Space>
nmap <F12> :w<CR>:!pdflatex<Space>%<Space>&&<Space>xdg-open<Space>%:r.pdf<CR><CR>
set grepprg=grep\ -nH\ $*
set showmatch
let g:tex_flavor='latex'
set mouse=a
imap <C-R>+ <C-[>"+pi 
let g:gundo_width = 60
let g:gundo_preview_height = 40
colorscheme jellybeans
set nolist 
command! -nargs=+ Calc :py print <args>
py from math import *
nmap <CR> :a<CR><CR>.<CR>
au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"    
au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
nmap // <leader>ci

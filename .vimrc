set encoding=utf-8
scriptencoding utf-8

" basic
set autoread
set number
set title
set showmatch

" indent
set expandtab
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4


" dein.vim
"""""""""""""""""""""""""""""""""""""""""""""""""
if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
colorscheme molokai
syntax enable
"""""""""""""""""""""""""""""""""""""""""""""""""// dein.vim

" Plugin
"" deoplete
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
let g:deoplete#enable_at_startup = 1

"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
"" end neosnippet


" TODO
" set nobackup
" set noswapfile

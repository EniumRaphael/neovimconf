"		  ██    ██ ██ ███    ███ ██████   ██████
"		  ██    ██ ██ ████  ████ ██   ██ ██
"		  ██    ██ ██ ██ ████ ██ ██████  ██
"		   ██  ██  ██ ██  ██  ██ ██   ██ ██
"		██   ████   ██ ██      ██ ██   ██  ██████

"""""""""""""""""""""""""""""""""""""""""""""
" 				CLASSIC CONFIG 
"""""""""""""""""""""""""""""""""""""""""""""

syntax on
set linebreak
set nowrap
set ruler
set number
set showmatch
set noswapfile
set mouse=a
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set relativenumber
set splitbelow
set splitright
set wildignorecase
set scrolloff=3

"""""""""""""""""""""""""""""""""""""""""""""
" 				Alias for MAJ 
"""""""""""""""""""""""""""""""""""""""""""""

command! W :w

command! Q :q

command! WA :wa
command! wA :wa

command! QA :qa
command! Qa :qa

command! WQ :wq
command! Wq :wq

command! XA :xa
command! Xa :xa

"""""""""""""""""""""""""""""""""""""""""""""
" 				MapLeader 
"""""""""""""""""""""""""""""""""""""""""""""

let mapleader=" "

nnoremap <leader>T :FloatermNew --height=0.6 --width=0.4 --wintype=float --name=floaterm<cr>
nnoremap <leader>w :w<cr>
nnoremap <C-s> :w<cr>
nnoremap <leader>b :Telescope buffers<cr>
nnoremap <leader>f :Telescope find_files<cr>
nnoremap <leader>t :Telescope<cr>
nnoremap <leader>o gT
nnoremap <leader>p gt
nnoremap <leader>m I#include <libc.h><cr><cr>int main(int ac, char **av)<cr>{<cr>}<esc>ko
nnoremap <leader>d :windo difft<cr>
nnoremap <leader>do :diffo<cr>
nnoremap ª :m .+1<CR>==
nnoremap º :m .-2<CR>==
nnoremap <F1> = <cmd>:Stdheader<CR>

inoremap ª <Esc>:m .+1<CR>==gi
inoremap º <Esc>:m .-2<CR>==gi

vnoremap ª :m '>+1<CR>gv=gv
vnoremap º :m '<-2<CR>gv=gv

"""""""""""""""""""""""""""""""""""""""""""""
"              		VIMPLUG 
"""""""""""""""""""""""""""""""""""""""""""""

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'

if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

onoremap ii ?if (<cr>jjdi{kkf(lci(

call plug#begin()
	Plug 'edkolev/tmuxline.vim'
	Plug 'sainnhe/edge'
"	Plug 'ervandew/supertab'
	Plug '42Paris/42header'
	Plug 'MunifTanjim/nui.nvim'
	Plug 'VonHeikemen/fine-cmdline.nvim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'voldikss/vim-floaterm'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'myusuf3/numbers.vim'
	Plug 'scrooloose/syntastic'
	Plug 'nvim-neo-tree/neo-tree.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'ntpeters/vim-airline-colornum'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
	Plug 'folke/tokyonight.nvim'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""

set listchars=tab:▸\ ,eol:¬
set list

"""""""""""""""""""""""""""""""""""""""""""""
"					TOKYONIGHT
"""""""""""""""""""""""""""""""""""""""""""""

colorscheme tokyonight
let g:tokyonight_style = 'night'
let g:tokyonight_italic_functions = true
let g:tokyonight_sidebars = [ 'quickfix', '__vista__', 'terminal' ]
let g:airline_theme = "tokyonight"

"""""""""""""""""""""""""""""""""""""""""""""
"              		 COLOR CODED
"""""""""""""""""""""""""""""""""""""""""""""

let g:color_coded_enabled = 1
let g:color_coded_filetypes = ['c', 'cpp', 'objc']

"""""""""""""""""""""""""""""""""""""""""""""
"              		 SYNTASTIC
"""""""""""""""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*let g:syntastic_always_populate_loc_list = 1

let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""
"              		 CURSORLINE
"""""""""""""""""""""""""""""""""""""""""""""

let g:airline_colornum_enabled = 1
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""
"              		CMD-LINE 
"""""""""""""""""""""""""""""""""""""""""""""
nnoremap : <cmd>FineCmdline<CR>

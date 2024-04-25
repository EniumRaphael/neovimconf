""		   ██    ██ ██ ███    ███ ██████   ██████
"		   ██    ██ ██ ████  ████ ██   ██ ██
"		   ██    ██ ██ ██ ████ ██ ██████  ██
"		    ██  ██  ██ ██  ██  ██ ██   ██ ██
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
command! Wa :wa

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

"		For leaving vim config
nnoremap <C-s> :wa<cr>
nnoremap <leader>w :wa<cr>
nnoremap <leader>q 
nnoremap <leader>Q :q<cr>
nnoremap <leader>o gT
nnoremap <leader>p gt

"		For Copilot
nnoremap <leader>X :Copilot disable<cr>
nnoremap <leader>Z :Copilot enable<cr>

"		For buffer
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

"		To navigate between files
nnoremap <leader><space> : :Neotree toggle<cr>
nnoremap <leader>b :Telescope buffers<cr>
nnoremap <leader>f :Telescope find_files<cr>
nnoremap <leader>T :Telescope<cr>

"		Some shortcut to be faster
nnoremap <leader>m I#include <libc.h><cr><cr>int main(int ac, char **av)<cr>{<cr>}<esc>ko
nnoremap <leader>t :FloatermNew --height=0.9 --width=0.8 --wintype=float<cr>
nnoremap <leader>d :windo difft<cr>
nnoremap <leader>do :diffo<cr>

"		For the header
nnoremap <F1> = <cmd>:Stdheader<CR>

"		Some random shortcut

nnoremap ª :m .+1<CR>==
nnoremap º :m .-2<CR>==nnoremap <leader>o gT
inoremap ª <Esc>:m .+1<CR>==gi
inoremap º <Esc>:m .-2<CR>==gi
vnoremap ª :m '>+1<CR>gv=gvnnoremap <leader>o gT
vnoremap º :m '<-2<CR>gv=gv
onoremap ii ?if (<cr>jjdi{kkf(lci(

"""""""""""""""""""""""""""""""""""""""""""""
"              		 VIMPLUG 
"""""""""""""""""""""""""""""""""""""""""""""

" let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'

" if empty(glob(data_dir . '/autoload/plug.vim'))
"   silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

call plug#begin()
	Plug 'shaunsingh/nord.nvim'
	Plug 'edkolev/tmuxline.vim'
	Plug 'EniumRaphael/Comment.nvim'
	Plug 'sainnhe/edge'
	Plug '42Paris/42header'
	Plug 'MunifTanjim/nui.nvim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'voldikss/vim-floaterm'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'myusuf3/numbers.vim'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'folke/trouble.nvim'
	Plug 'scrooloose/syntastic'
	Plug 'nvim-neo-tree/neo-tree.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'ntpeters/vim-airline-colornum'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
	Plug 'folke/noice.nvim'
	Plug 'MunifTanjim/nui.nvim'
	Plug 'github/copilot.vim'
	Plug 'rcarriga/nvim-notify'
call plug#end()

"		Some Plugins not use any more
"	Plug 'VonHeikemen/fine-cmdline.nvim'
"	Plug 'ervandew/supertab'

"""""""""""""""""""""""""""""""""""""""""""""
"					See Char
"""""""""""""""""""""""""""""""""""""""""""""

set listchars=tab:▸\ ,eol:¬
set list

"""""""""""""""""""""""""""""""""""""""""""""
"					ColorScheme
"""""""""""""""""""""""""""""""""""""""""""""

colorscheme nord
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "base16_nord"

"""""""""""""""""""""""""""""""""""""""""""""
"              		  COLOR CODED
"""""""""""""""""""""""""""""""""""""""""""""

let g:color_coded_enabled = 1
let g:color_coded_filetypes = ['c', 'cpp', 'objc', 'js', 'ts', 'lua']

"""""""""""""""""""""""""""""""""""""""""""""
"              		  SYNTASTIC
"""""""""""""""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""
"              		  CURSORLINE
"""""""""""""""""""""""""""""""""""""""""""""

let g:airline_colornum_enabled = 1
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""
"              		 COMMENTS 
"""""""""""""""""""""""""""""""""""""""""""""


lua << EOF
require('noice').setup()
require('Comment').setup()
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "node_modules",
	  "objects",
	  "object",
    }
  }
}
EOF

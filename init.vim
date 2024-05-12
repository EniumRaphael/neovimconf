"	██    ██ ██ ███    ███ ██████   ██████
"	██    ██ ██ ████  ████ ██   ██ ██
"	██    ██ ██ ██ ████ ██ ██████  ██
"	 ██  ██  ██ ██  ██  ██ ██   ██ ██
"██	  ████   ██ ██      ██ ██   ██  ██████


"	CLASSIC CONFIG 

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
set clipboard+=unnamed,unnamedplus
set columns=80
set ignorecase
set ruler

let g:user42 = 'rparodi'
let g:mail42 = 'rparodi@student.42.fr'

"	Alias for MAJ 

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

"	Alias to don't have the deleted things

nnoremap dd "_dd
nnoremap dw "_dw
nnoremap d$ "_d$
nnoremap d "_d

"	MapLeader 

let mapleader=" "

"		For leaving vim config
inoremap <C-s> <cmd>wa<cr>
nnoremap <C-s> <cmd>wa<cr>
nnoremap <leader>w <cmd>wa<cr>
nnoremap <leader>q 
nnoremap <leader>Q <cmd>q<cr>

"		For widows size
nnoremap <C-S-Up> <cmd>resize +2<CR>
nnoremap <C-S-Down> <cmd>resize -2<CR>
nnoremap <C-S-Left> <cmd>vertical resize -2<CR>
nnoremap <C-S-Right> <cmd>vertical resize +2<CR>

"		For Git management
nnoremap <leader>ga <cmd>call AddingFiles()<cr>
nnoremap <leader>gs <cmd>call StatusRepo()<cr>
nnoremap <leader>gm <cmd>call CommitWithMessage()<cr>
nnoremap <leader>gc <cmd>call CommitWithMessage()<cr>
nnoremap <leader>gp <cmd>!git push<cr>

"		For moving between windows
nnoremap <leader>1 <cmd>1tabnext<cr>
nnoremap <leader>2 <cmd>2tabnext<cr>
nnoremap <leader>3 <cmd>3tabnext<cr>
nnoremap <leader>4 <cmd>4tabnext<cr>
nnoremap <leader>5 <cmd>5tabnext<cr>
nnoremap <leader>6 <cmd>6tabnext<cr>
nnoremap <leader>7 <cmd>7tabnext<cr>
nnoremap <leader>8 <cmd>8tabnext<cr>
nnoremap <leader>9 <cmd>9tabnext<cr>
nnoremap <leader>0 <cmd>10tabnext<cr>
nnoremap <leader>n <cmd>tabnew<cr>
nnoremap <leader>o gT
nnoremap <leader>p gt

"		For Copilot
nnoremap <leader>X <cmd>Copilot disable<cr>
nnoremap <leader>Z <cmd>Copilot enable<cr>

"		For buffer
nnoremap <leader>v <cmd>vsplit<cr>
nnoremap <leader>h <cmd>split<cr>

"		To navigate between files
nnoremap <leader><space> <cmd>Neotree toggle<cr>
nnoremap <leader>b <cmd>Telescope buffers prompt_prefix=📂:<cr>
nnoremap <leader>G <cmd>Telescope live_grep prompt_prefix=🪄:<cr>
nnoremap <leader>f <cmd>Telescope find_files prompt_prefix=🔖:<cr>
nnoremap <leader>T <cmd>Telescope<cr>

"		Some shortcut to be faster
nnoremap <leader>N <cmd>!norminette
nnoremap <leader>F <cmd>!find . -name "*.c" >> ./Makefile<cr>
nnoremap <leader>m <cmd>!make -j<cr>
nnoremap <leader>c <cmd>!copen<cr>
nnoremap <leader>d :GdbStart gdb
nnoremap <leader>M I#include <libc.h><cr><cr>int main(int argc, char *argv[], char *evnp[])<cr>{<cr>}<esc>ko
nnoremap <leader>t <cmd>lua require("FTerm").toggle()<cr>
nnoremap <leader>dd <cmd>windo difft<cr>
nnoremap <leader>do <cmd>diffo<cr>
nnoremap / /\v
vnoremap / /\v

"		For the header
nnoremap <F1> = <cmd>Stdheader<CR>

"		Some random shortcut
nnoremap ª <cmd>m .+1<CR>==
nnoremap º <cmd>m .-2<CR>==nnoremap <leader>o gT
inoremap ª <Esc><cmd>m .+1<CR>==gi
inoremap º <Esc><cmd>m .-2<CR>==gi
vnoremap ª <cmd>m '>+1<CR>gv=gvnnoremap <leader>o gT
vnoremap º <cmd>m '<-2<CR>gv=gv
onoremap ii ?if (<cr>jjdi{kkf(lci(

" Map the function to a key combination, e.g., <leader>h
nnoremap <leader>h :call InsertHeaderGuard()<CR>

"	 VIMPLUG 

call plug#begin()
	Plug 'oxfist/night-owl.nvim'
	Plug 'numToStr/FTerm.nvim'
	Plug 'sakhnik/nvim-gdb'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'edkolev/tmuxline.vim'
	Plug 'numToStr/Comment.nvim'
	Plug 'sainnhe/edge'
	Plug 'rafamadriz/friendly-snippets'
	Plug '42Paris/42header'
	Plug 'MunifTanjim/nui.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'voldikss/vim-floaterm'
	Plug 'williamboman/mason-lspconfig.nvim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'p00f/clangd_extensions.nvim'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'ray-x/lsp_signature.nvim'
	Plug 'L3MON4D3/LuaSnip'
	Plug 'rafamadriz/friendly-snippets'
	Plug 'saadparwaiz1/cmp_luasnip'
	Plug 'williamboman/mason.nvim'
	Plug 'myusuf3/numbers.vim'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'folke/trouble.nvim'
	Plug 'scrooloose/syntastic'
	Plug 'nvim-neo-tree/neo-tree.nvim'
	Plug 'williamboman/mason-lspconfig.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'ntpeters/vim-airline-colornum'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
	Plug 'folke/noice.nvim'
	Plug 'MunifTanjim/nui.nvim'
	Plug 'github/copilot.vim'
	Plug 'rcarriga/nvim-notify'
call plug#end()

"	Loading lua

lua require('clangdextension_config').setup()
lua require('lsp_config').setup()
lua require('noice_config').setup()
lua require('comment_config').setup()
lua require('telescope_config').setup()
lua require('lsp_signature_config').setup()
lua require('mason_config').setup()
lua require('cmp_config').setup()
lua require('nightowl_config').setup()
lua require('fterm_config').setup()
lua require('trouble_config').setup()

"	See Char

set listchars=tab:▸\ ,eol:¬
set list

"	ColorScheme

colorscheme night-owl
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_set = '>'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme = "nord_minimal"

let g:colors_name = "nord_minimal"

"	CURSORLINE

let g:airline_colornum_enabled = 1
set cursorline

"	PATH

" let g:copilot_node_path = '~/.nvm/versions/node/v22.1.0/bin/node'

"	COLOR

 autocmd VimEnter * TSToggle highlight

"	Function for the header

function! InsertHeaderGuard()
    let macro_name = substitute(toupper(expand('%:t')), '\.', '_', 'g')
    execute "normal! i#ifndef " . macro_name . "\<cr># define " . macro_name . "\<CR>\<CR>\<CR>#endif\<cr>\<Esc>:Stdheader\<cr>kkO"
endfunction

"		Function for the git management
function! CommitWithMessage()
    let commit_msg = input('Enter commit message: ')
    if len(commit_msg) == 0
        echo "Commit message cannot be empty!"
        return
    endif
    execute '!git commit -m ' . shellescape(commit_msg)
    if v:shell_error == 0
        echo "Changes committed successfully."
    else
        echo "Failed to commit changes."
    endif
endfunction

function! AddingFiles()
    let commit_msg = input('Enter files to add:')
    if len(commit_msg) == 0
        return
    endif
    execute '!git add ' . shellescape(commit_msg)
    if v:shell_error == 0
        echo "Files added successfully."
    else
        echo "Failed to add the files."
    endif
endfunction

function! StatusRepo()
    let status_list = systemlist('git status -s')
    let modified_staged = []
    let modified_unstaged = []
    let added_staged = []
    let added_unstaged = []
    let deleted_staged = []
    let deleted_unstaged = []
    let renamed_staged = []
    let renamed_unstaged = []
    let untracked_files = []

    for line in status_list
        if line[0] == 'M' && line[1] == ' '
            call add(modified_staged, line[3:])
        elseif line[0] == ' ' && line[1] == 'M'
            call add(modified_unstaged, line[3:])
        elseif line[0] == 'A' && line[1] == ' '
            call add(added_staged, line[3:])
        elseif line[0] == ' ' && line[1] == 'A'
            call add(added_unstaged, line[3:])
        elseif line[0] == 'D' && line[1] == ' '
            call add(deleted_staged, line[3:])
        elseif line[0] == ' ' && line[1] == 'D'
            call add(deleted_unstaged, line[3:])
        elseif line[0] == 'R' && line[1] == ' '
            call add(renamed_staged, line[3:])
        elseif line[0] == ' ' && line[1] == 'R'
            call add(renamed_unstaged, line[3:])
        elseif line =~ '^\?\?'
            call add(untracked_files, line[3:])
        endif
    endfor

	echo "Tracked files:"
    echo join("Modified: ", join(modified_staged, "\n"))
    echo join("Added: ", join(added_staged, "\n"))
    echo join("Deleted: ", join(deleted_staged, "\n"))
    echo join("Renamed: ", join(renamed_staged, "\n"))
	
	echo "Untracked files:"
    echo join("Modified: ", join(modified_unstaged, "\n"))
    echo join("Added: "join(added_unstaged, "\n"))
    echo join("Deleted: ", join(deleted_unstaged, "\n"))
    echo join("Renamed :", join(renamed_unstaged, "\n"))
    echo join("Other :", join(untracked_files, "\n"))
endfunction

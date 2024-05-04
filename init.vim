"   ██    ██ ██ ███    ███ ██████   ██████
"   ██    ██ ██ ████  ████ ██   ██ ██
"   ██    ██ ██ ██ ████ ██ ██████  ██
"    ██  ██  ██ ██  ██  ██ ██   ██ ██
"██   ████   ██ ██      ██ ██   ██  ██████


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
inoremap <C-s> <Esc>:wa<cr>i
nnoremap <C-s> :wa<cr>
nnoremap <leader>w :wa<cr>
nnoremap <leader>q 
nnoremap <leader>Q :q<cr>

"		For moving between windows
nnoremap <leader>1 :1tabnext<cr>
nnoremap <leader>2 :2tabnext<cr>
nnoremap <leader>3 :3tabnext<cr>
nnoremap <leader>4 :4tabnext<cr>
nnoremap <leader>5 :5tabnext<cr>
nnoremap <leader>6 :6tabnext<cr>
nnoremap <leader>7 :7tabnext<cr>
nnoremap <leader>8 :8tabnext<cr>
nnoremap <leader>9 :9tabnext<cr>
nnoremap <leader>0 :10tabnext<cr>
nnoremap <leader>n :tabnew<cr>
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
nnoremap <leader>b :Telescope buffers prompt_prefix=📂:<cr>
nnoremap <leader>g :Telescope live_grep prompt_prefix=🪄:<cr>
nnoremap <leader>f :Telescope find_files prompt_prefix=🔖:<cr>
nnoremap <leader>T :Telescope<cr>

"		Some shortcut to be faster
nnoremap <leader>N :!norminette
nnoremap <leader>F :!find . -name "*.c" >> ./Makefile<cr>
nnoremap <leader>m :!make -j<cr>
nnoremap <leader>c :!copen<cr>
nnoremap <leader>d :GdbStartLLDB lldb 
nnoremap <leader>M I#include <libc.h><cr><cr>int main(int argc, char *argv[], char *evnp[])<cr>{<cr>}<esc>ko
nnoremap <leader>t :FloatermNew --height=0.9 --width=0.8 --wintype=float<cr>
nnoremap <leader>dd :windo difft<cr>
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
	Plug 'ribru17/bamboo.nvim'
    Plug 'sakhnik/nvim-gdb'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'edkolev/tmuxline.vim'
	Plug 'EniumRaphael/Comment.nvim'
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
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'L3MON4D3/LuaSnip'
	Plug 'rafamadriz/friendly-snippets'
	Plug 'saadparwaiz1/cmp_luasnip'
	Plug 'williamboman/mason.nvim'
	Plug 'myusuf3/numbers.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'folke/trouble.nvim'
	Plug 'scrooloose/syntastic'
	Plug 'nvim-neo-tree/neo-tree.nvim'
	Plug 'williamboman/mason-lspconfig.nvim'
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

colorscheme bamboo
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "base16_atelier_forest"

"""""""""""""""""""""""""""""""""""""""""""""
"              		  CURSORLINE
"""""""""""""""""""""""""""""""""""""""""""""

let g:airline_colornum_enabled = 1
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""
"              		 PATH
"""""""""""""""""""""""""""""""""""""""""""""

let g:coc_node_path = '/home/rparodi/.nvm/versions/node/v22.1.0/bin/node'
let g:copilot_node_path = '/home/rparodi/.nvm/versions/node/v22.1.0/bin/node'
let g:tagbar_ctags_bin = '/usr/bin/ctags'

"""""""""""""""""""""""""""""""""""""""""""""
"              		 COLOR
"""""""""""""""""""""""""""""""""""""""""""""

autocmd VimEnter * TSToggle highlight

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

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local cmp = require'cmp'
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<Left>'] = cmp.mapping.abort(),
        ['<Right>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer', keyword_length = 4 },
        { name = 'path' }
    })
})
require('lspconfig').clangd.setup({
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function(client, bufnr)
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local opts = { noremap=true, silent=true }
        -- Binding LSP functions to keys
        buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
        buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    end
})
EOF

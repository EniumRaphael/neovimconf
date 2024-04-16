┌[rparodi@bess-f2r4s15] [/dev/pts/1] 
└[~/.var/app/io.neovim.nvim/config/nvim]> l
Permissions Size User    Date Modified Name
.rw-r-x---  4.0k rparodi 16 Apr 14:55  init.vim
┌[rparodi@bess-f2r4s15] [/dev/pts/1] 
└[~/.var/app/io.neovim.nvim/config/nvim]> vim .
┌[rparodi@bess-f2r4s15] [/dev/pts/1] 
└[~/.var/app/io.neovim.nvim/config/nvim]> vim .
┌[rparodi@bess-f2r4s15] [/dev/pts/1] 
└[~/.var/app/io.neovim.nvim/config/nvim]> vim ./init.vim
┌[rparodi@bess-f2r4s15] [/dev/pts/1] 
└[~/.var/app/io.neovim.nvim/config/nvim]> vim ./init.vim
┌[rparodi@bess-f2r4s15] [/dev/pts/1] 
└[~/.var/app/io.neovim.nvim/config/nvim]> vim ./init.vim
┌[rparodi@bess-f2r4s15] [/dev/pts/1] 
└[~/.var/app/io.neovim.nvim/config/nvim]> vim ./init.vim
┌[rparodi@bess-f2r4s15] [/dev/pts/1] 
└[~/.var/app/io.neovim.nvim/config/nvim]> vim ./init.vim
┌[rparodi@bess-f2r4s15] [/dev/pts/1] 
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
"                   TOKYONIGHT
"""""""""""""""""""""""""""""""""""""""""""""

colorscheme tokyonight
let g:tokyonight_style = 'night'
let g:tokyonight_italic_functions = true
let g:tokyonight_sidebars = [ 'quickfix', '__vista__', 'terminal' ]
let g:airline_theme = "tokyonight"

"""""""""""""""""""""""""""""""""""""""""""""
"                     COLOR CODED
"""""""""""""""""""""""""""""""""""""""""""""

let g:color_coded_enabled = 1
let g:color_coded_filetypes = ['c', 'cpp', 'objc']

"""""""""""""""""""""""""""""""""""""""""""""
"                     SYNTASTIC
"""""""""""""""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*let g:syntastic_always_populate_loc_list = 1

let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""
"                     CURSORLINE
"""""""""""""""""""""""""""""""""""""""""""""

let g:airline_colornum_enabled = 1
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""
"                    CMD-LINE 
"""""""""""""""""""""""""""""""""""""""""""""
nnoremap : <cmd>FineCmdline<CR>

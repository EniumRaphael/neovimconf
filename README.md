This configuration file contains various settings and mappings for Neovim. It includes settings for syntax highlighting, line wrapping, ruler display,line numbers, mouse support, indentation, and more. It also defines aliases for common commands and sets the map leader. It also sets up color coding for C, C++, and Objective-C files, and enables cursorline highlighting. 
> *For installations on 42 workstations (install from 42 package manager), the configuration should be put in ~/.var/app/io.neovim.nvim/config/nvim/init.vim* (Or just create a symlink).

![]()

Here's a detailed breakdown of the key bindings, prerequisites, and plugins based on the provided Neovim configuration. This overview will help users understand how to interact with Neovim using your setup and what they need to get started.

## Prerequisites

To use this Neovim configuration effectively, you will need:

- **Neovim (v0.5.0 or newer)**: Ensure you have the latest version to support all features, especially Treesitter and LSP integration.
- **Python3**: Required for plugins that depend on Python scripting support.
- **Node.js and npm**: Needed for installing and running JavaScript-based tools and language servers (use nvm for 42).
- **Git**: Necessary for installing some plugins and managing versions.

## Key Bindings

This configuration includes several key mappings designed to enhance productivity:

- **File and Buffer Management**:
  - `Ctrl+s`: Save all changes.
  - `<leader>w`: Save all changes and remain in the current mode.
  - `<leader>q`: Quit the current window.
  - `<leader>Q`: Quit Neovim.

- **Tab and Window Navigation**:
  - `<leader>1` to `<leader>0`: Navigate between up to 10 tabs.
  - `<leader>n`: Open a new tab.
  - `<leader>v`: Open a vertical split.
  - `<leader>h`: Open a horizontal split.
  - `<leader>o`: Cycle through tabs in reverse.
  - `<leader>p`: Cycle through tabs forward.

- **Code and Tools**:
  - `<F1>`: Apply 42 header.
  - `<leader>N`: Run code norminette.
  - `<leader>F`: Find all `.c` files and append to `Makefile`.
  - `<leader>m`: Run make with parallel jobs.
  - `<leader>c`: Open the compilation output window.
  - `<leader>d`: Start LLDB for debugging.
  - `<leader>t`: Toggle the terminal window.
  - `<leader>dd`: Diff this window.
  - `<leader>do`: Diff obtain.
  - `Ctrl+/`: Comment single lines.
  - `<space>+/`: Comment in blocks.

- **Plugin Specific**:
  - `<leader>X`: Disable Copilot.
  - `<leader>Z`: Enable Copilot.
  - `<leader><space>`: Toggle Neotree file explorer.
  - `<leader>b`: Open Telescope buffer search.
  - `<leader>g`: Open Telescope live grep.
  - `<leader>f`: Open Telescope file finder.
  - `<leader>T`: Trigger Telescope.

## Plugins

This setup uses a variety of plugins to extend Neovim's capabilities:

- **UI Enhancements**:
  - [`nordic.nvim`](https://github.com/AlexvZyl/nordic.nvim): A Neovim color scheme.
  - [`vim-airline`](https://github.com/vim-airline/vim-airline): Lean & mean status/tabline for vim that's light as air.
  - [`vim-airline-themes`](https://github.com/vim-airline/vim-airline-themes): Themes for vim-airline.

- **File and Project Management**:
  - [`nvim-tree.lua`](https://github.com/kyazdani42/nvim-tree.lua): A file explorer tree.
  - [`Telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim): A highly extendable fuzzy finder over lists.

- **Development Tools**:
  - [`nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig): Quickstart configurations for the Neovim LSP client.
  - [`mason.nvim`](https://github.com/williamboman/mason.nvim): Manage external editor tooling like LSPs, DAPs, linters, and formatters.
  - [`mason-lspconfig.nvim`](https://github.com/williamboman/mason-lspconfig.nvim): Bridges mason.nvim with nvim-lspconfig.
  - [`nvim-gdb`](https://github.com/sakhnik/nvim-gdb): Neovim thin wrapper for GDB, LLDB, and PDB.

- **Syntax and Snippets**:
  - [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter): Treesitter configurations and abstraction layer for Neovim.
  - [`Comment.nvim`](https://github.com/numToStr/Comment.nvim): Smart and powerful commenting plugin for Neovim.
  - [`LuaSnip`](https://github.com/L3MON4D3/LuaSnip): A snippet engine for Neovim written in Lua.
  - [`friendly-snippets`](https://github.com/rafamadriz/friendly-snippets): Set of preconfigured snippets for different languages.

- **Completion and Intellisense**:
  - [`nvim-cmp`](https://github.com/hrsh7th/nvim-cmp): Autocompletion plugin for Neovim.
  - [`cmp-nvim-lsp`](https://github.com/hrsh7th/cmp-nvim-lsp): nvim-cmp source for neovim's built-in LSP.
  - [`cmp-buffer`](https://github.com/hrsh7th/cmp-buffer): nvim-cmp source for buffer words.
  - [`cmp-path`](https://github.com/hrsh7th/cmp-path): nvim-cmp source for file system paths.
  - [`lsp_signature.nvim`](https://github.com/ray-x/lsp_signature.nvim): Show function signature when you type.

- **Miscellaneous**:
  - [`FTerm.nvim`](https://github.com/numToStr/FTerm.nvim): No-nonsense floating terminal written in Lua.
  - [`syntastic`](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim.
  - [`vim-visual-multi`](https://github.com/mg979/vim-visual-multi): Multiple cursors plugin for vim/neovim.
  - [`noice.nvim`](https://github.com/folke/noice.nvim): Improved the bar of command.

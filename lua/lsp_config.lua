local lsp_config_lua = {}

function lsp_config_lua.setup()
    require('lspconfig')['clangd'].setup({
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
        on_attach = function(client, bufnr)
            local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
            local opts = { noremap=true, silent=true }
            -- Binding LSP functions to keys
            buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
            buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
        end
    })
end

return lsp_config_lua

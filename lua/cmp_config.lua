local cmp_config = require('cmp')

function cmp_config.setup()
	require('cmp').setup({
		snippet = {
			expand = function(args)
				require('luasnip').lsp_expand(args.body)
			end,
		},
		mapping = cmp_config.mapping.preset.insert({
			['<Down>'] = cmp_config.mapping.select_next_item({ behavior = cmp_config.SelectBehavior.Insert }),
			['<Up>'] = cmp_config.mapping.select_prev_item({ behavior = cmp_config.SelectBehavior.Insert }),
			['<C-d>'] = cmp_config.mapping.scroll_docs(-4),
			['<C-f>'] = cmp_config.mapping.scroll_docs(4),
			['<C-Space>'] = cmp_config.mapping.complete(),
			['<Left>'] = cmp_config.mapping.abort(),
			['<Right>'] = cmp_config.mapping.confirm({ select = true }),
		}),
		sources = cmp_config.config.sources({
			{ name = 'nvim_lsp' },
			{ name = 'luasnip' },
			{ name = 'buffer', keyword_length = 4 },
			{ name = 'path' }
		})
	})
end

return cmp_config

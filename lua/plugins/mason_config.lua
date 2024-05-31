local mason_config_lua = {}

function mason_config_lua.setup()
	require("mason").setup({
		-- install_root_dir = path.concat { vim.fn.stdpath "data", "mason" },
		-- PATH = "prepend",
		log_level = vim.log.levels.INFO,
		max_concurrent_installers = 4,
		registries = {
			"github:mason-org/mason-registry",
		},
		providers = {
			"mason.providers.registry-api",
			"mason.providers.client",
			},
		github = {
			download_url_template = "https://github.com/%s/releases/download/%s/%s",
			},
		pip = {
			 upgrade_pip = false,
			 install_args = {},
		},
		ui = {
			check_outdated_packages_on_open = true,
			border = "none",
			width = 0.8,
			height = 0.9,
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗"
				},
			keymaps = {
				toggle_package_expand = "<CR>",
				install_package = "i",
				update_package = "u",
				check_package_version = "c",
				update_all_packages = "U",
				check_outdated_packages = "C",
				uninstall_package = "X",
				cancel_installation = "<C-c>",
				apply_language_filter = "<C-f>",
				toggle_package_install_log = "<CR>",
				toggle_help = "g?",
			},
		},
	})
end

return mason_config_lua

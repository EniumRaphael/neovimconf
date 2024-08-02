local neocord_config_lua = {}

function neocord_config_lua.setup()
	require("neocord").setup({
		logo = "https://static-00.iconduck.com/assets.00/apps-neovim-icon-1024x1024-cvzervfu.png",
		logo_tooltip= nil,
		main_image= "language",
		client_id = "1157438221865717891",
		log_level = nil,
		debounce_timeout= 10,
		blacklist = {},
		file_assets = {},
		show_time = true,
		global_timer= true,

		editing_text= "Editing %s",
		file_explorer_text= "Browsing %s",
		git_commit_text = "Committing changes",
		plugin_manager_text = "Managing plugins",
		reading_text= "Reading %s",
		workspace_text= "Working on %s",
		line_number_text= "Line %s out of %s",
		terminal_text = "Using Terminal",
	})
end

return neocord_config_lua


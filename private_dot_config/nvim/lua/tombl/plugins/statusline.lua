return {
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = "kyazdani42/nvim-web-devicons",
		config = function()
			require("tombl.statusline")
		end,
	},
}

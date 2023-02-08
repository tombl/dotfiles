return {
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = "kyazdani42/nvim-web-devicons",
		config = {
			renderer = {
				add_trailing = true,
				icons = {
					padding = "  ",
					git_placement = "signcolumn",
					modified_placement = "signcolumn",
				},
			},
		},
		keys = {
			{ "<leader>t", "<cmd>NvimTreeToggle<cr>" },
		},
	},
}

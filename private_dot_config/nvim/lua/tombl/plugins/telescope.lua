return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		cmd = "Telescope",
		keys = {
			{ "<leader> ", "<cmd>Telescope find_files<cr>" },
			{ "<leader>s", "<cmd>Telescope grep_string<cr>" },
		},
	},
}

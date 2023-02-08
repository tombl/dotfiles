return {
	{ "tpope/vim-surround", event = "BufReadPre" },

	{
		"numToStr/Comment.nvim",
		dependencies = "JoosepAlviste/nvim-ts-context-commentstring",
		event = "VeryLazy",
		config = function()
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
	},

	{
		"echasnovski/mini.pairs",
		event = "InsertEnter",
		config = function()
			require("mini.pairs").setup({})
		end,
	},

	{
		"ggandor/leap.nvim",
		event = "VeryLazy",
		config = function()
			return require("leap").add_default_mappings()
		end,
	},

	{
		"Darazaki/indent-o-matic",
		config = {},
		event = "BufReadPre",
	},

	{
		url = "https://gitlab.com/yorickpeterse/nvim-window.git",
		keys = {
			{
				"<leader>w",
				function()
					require("nvim-window").pick()
				end,
			},
		},
		config = {
			normal_hl = "Search",
			hint_hl = "Bold",
			border = "none",
		},
	},
}

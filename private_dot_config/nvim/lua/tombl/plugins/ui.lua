return {
	{ "lewis6991/gitsigns.nvim", config = true, event = "BufReadPre" },

	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufReadPre",
		config = {
			show_current_context = true,
		},
	},

	{
		"folke/noice.nvim",
		dependencies = "MunifTanjim/nui.nvim",
		event = "VeryLazy",
		config = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = true,
			},
		},
	},

	{
		"stevearc/dressing.nvim",
		init = function()
			vim.ui.select = function(...)
				require("lazy").load({ plugins = { "dressing.nvim" } })
				return vim.ui.select(...)
			end
			vim.ui.input = function(...)
				require("lazy").load({ plugins = { "dressing.nvim" } })
				return vim.ui.input(...)
			end
		end,
	},
}

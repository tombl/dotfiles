return {
	{
		"famiu/bufdelete.nvim",
		cmd = "Bdelete",
		keys = { { "<A-c>", "<cmd>Bdelete<cr>" } },
	},
	{
		"tiagovla/scope.nvim",
		event = "VeryLazy",
		config = true,
	},
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		config = {
			options = {
				diagnostics = "nvim_lsp",
				offsets = {
					{ filetype = "NvimTree", text = "files" },
					{ filetype = "lspsagaoutline", text = "outline" },
				},
				indicator = { style = "none" },
				buffer_close_icon = "",
				close_icon = "",
				left_trunc_marker = "<",
				right_trunc_marker = ">",
			},
		},
		keys = {
			{ "<A-,>", "<cmd>BufferLineCyclePrev<cr>" },
			{ "<A-.>", "<cmd>BufferLineCycleNext<cr>" },
			{ "<A-<>", "<cmd>BufferLineMovePrev<cr>" },
			{ "<A->>", "<cmd>BufferLineMoveNext<cr>" },
			{ "<A-1>", "<cmd>BufferLineGoToBuffer 1<cr>" },
			{ "<A-2>", "<cmd>BufferLineGoToBuffer 2<cr>" },
			{ "<A-3>", "<cmd>BufferLineGoToBuffer 3<cr>" },
			{ "<A-4>", "<cmd>BufferLineGoToBuffer 4<cr>" },
			{ "<A-5>", "<cmd>BufferLineGoToBuffer 5<cr>" },
			{ "<A-6>", "<cmd>BufferLineGoToBuffer 6<cr>" },
			{ "<A-7>", "<cmd>BufferLineGoToBuffer 7<cr>" },
			{ "<A-8>", "<cmd>BufferLineGoToBuffer 8<cr>" },
			{ "<A-9>", "<cmd>BufferLineGoToBuffer 9<cr>" },
			{ "<A-0>", "<cmd>BufferLineGoToBuffer -1<cr>" },
			{ "<leader>b", "<cmd>BufferLinePick<cr>" },
		},
	},
}

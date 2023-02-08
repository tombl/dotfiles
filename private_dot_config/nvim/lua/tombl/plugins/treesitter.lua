return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = "BufReadPost",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"bash",
					"c",
					"cpp",
					"css",
					"diff",
					"fish",
					"gitignore",
					"go",
					"help",
					"html",
					"java",
					"javascript",
					"jsdoc",
					"json",
					"lua",
					"markdown_inline",
					"markdown",
					"ninja",
					"php",
					"python",
					"regex",
					"rust",
					"svelte",
					"toml",
					"tsx",
					"typescript",
					"vim",
					"wgsl",
					"yaml",
					"comment",
				},
				highlight = { enable = true },
				indent = { enable = true },
				context_commentstring = { enable = true, enable_autocmd = false },
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "BufReadPost",
		config = true,
	},

	{
		"cshuaimin/ssr.nvim",
		keys = { {
			"<leader>e",
			function()
				require("ssr").open()
			end,
		} },
	},
}

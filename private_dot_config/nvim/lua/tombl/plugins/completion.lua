return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		{
			"dcampos/cmp-snippy",
			dependencies = "dcampos/nvim-snippy",
		},
		{
			"zbirenbaum/copilot-cmp",
			dependencies = "zbirenbaum/copilot.lua",
			config = true,
		},
	},
	config = function()
		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				expand = function(args)
					return require("snippy").expand_snippet(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "copilot" },
				{ name = "snippy" },
			}),
			experimental = { ghost_text = true },
		})
		cmp.setup.cmdline("/", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "buffer" },
			}),
		})
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "cmdline" },
				{ name = "path" },
			}),
		})
	end,
}

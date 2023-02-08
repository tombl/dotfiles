vim.diagnostic.config({
	signs = false,
	virtual_text = {
		prefix = "",
		format = function(diagnostic)
			local icons = {
				[vim.diagnostic.severity.ERROR] = " ",
				[vim.diagnostic.severity.WARN] = " ",
				[vim.diagnostic.severity.INFO] = " ",
				[vim.diagnostic.severity.HINT] = " ",
			}
			return icons[diagnostic.severity] .. " " .. diagnostic.message
		end,
	},
})

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {
	clangd = {},
	denols = {},
	gopls = {},
	gradle_ls = {},
	jdtls = {},
	kotlin_language_server = {},
	rust_analyzer = {},
}

return {
	{ "lukas-reineke/lsp-format.nvim", config = true },

	{
		"smjonas/inc-rename.nvim",
		cmd = "IncRename",
		config = true,
		keys = { { "<leader>r", ":IncRename " } },
	},

	{
		"glepnir/lspsaga.nvim",
		event = "LspAttach",
		config = {
			lightbulb = { enable = false },
			symbol_in_winbar = { enable = false },
		},
		keys = {
			{ "<leader>a", "<cmd>Lspsaga code_action<cr>" },
			{ "<leader>h", "<cmd>Lspsaga hover_doc<cr>" },
			{ "<leader>o", "<cmd>Lspsaga outline<cr>" },
			{ "<leader>f", "<cmd>Lspsaga lsp_finder<cr>" },
			{ "<leader>[", "<cmd>Lspsaga diagnostic_jump_prev<cr>" },
			{ "<leader>]", "<cmd>Lspsaga diagnostic_jump_next<cr>" },
		},
	},

	{
		"RRethy/vim-illuminate",
		event = "BufReadPost",
		config = function()
			require("illuminate").configure({
				filetypes_denylist = { "NvimTree" },
				min_count_to_highlight = 2,
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		event = "BufReadPre",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"lukas-reineke/lsp-format.nvim",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			local format = require("lsp-format")

			for server, config in pairs(servers) do
				lspconfig[server].setup(vim.tbl_deep_extend("force", {
					capabilities = capabilities,
					on_attach = format.on_attach,
				}, config))
			end
		end,
	},

	{
		"jose-elias-alvarez/null-ls.nvim",
		event = "BufReadPre",
		dependencies = {
			"lukas-reineke/lsp-format.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local nls = require("null-ls")
			local format = require("lsp-format")

			-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
			nls.setup({
				sources = {
					-- shell
					nls.builtins.formatting.shfmt,
					nls.builtins.formatting.fish_indent,
					nls.builtins.diagnostics.shellcheck,

					-- js, ts, json, markdown
					nls.builtins.formatting.deno_fmt,
					nls.builtins.formatting.rustywind,

					-- c, cpp, java
					-- nls.builtins.formatting.clang_format,
					-- does clangd embed clang-format?

					-- lua
					nls.builtins.formatting.stylua,
					nls.builtins.diagnostics.selene.with({
						condition = function(utils)
							return utils.root_has_file({ "selene.toml" })
						end,
					}),
				},
				on_attach = format.on_attach,
			})
		end,
	},

	-- {
	-- 	"mfussenegger/nvim-jdtls",
	-- 	ft = "java",
	-- 	config = function()
	-- 		require("jdtls").start_or_attach({
	-- 			cmd = { "/usr/bin/jdtls" },
	-- 		})
	-- 	end,
	-- },
}

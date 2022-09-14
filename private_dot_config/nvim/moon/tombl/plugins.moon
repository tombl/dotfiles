require"packer".startup (use) ->
	use "wbthomason/packer.nvim"

	use "lewis6991/impatient.nvim"

	use {
		"nvim-lua/plenary.nvim"
		as: "plenary"
	}

	use {
		"nvim-treesitter/nvim-treesitter"
		run: -> require"nvim-treesitter.install".update with_sync: true
	}
	use {
		"nvim-treesitter/nvim-treesitter-context"
		requires: "nvim-treesitter/nvim-treesitter"
		config: -> require"treesitter-context".setup {}
	}

	-- use "leafo/moonscript-vim"

	use {
		"lukas-reineke/lsp-format.nvim"
		config: -> require"lsp-format".setup {}
	}

	use {
		"neovim/nvim-lspconfig"
		requires: {
			"hrsh7th/cmp-nvim-lsp"
			"lukas-reineke/lsp-format.nvim"
			"plenary"
			"jose-elias-alvarez/null-ls.nvim"
			"folke/lua-dev.nvim"
		}
		config: ->
			capabilities = vim.lsp.protocol.make_client_capabilities!
			require"cmp_nvim_lsp".update_capabilities capabilities

			default =
				:capabilities
				on_attach: require"lsp-format".on_attach

			setup = (name, extra={}) ->
				require"lspconfig"[name].setup vim.tbl_extend "force", default, extra

			setup "arduino_language_server"
			setup "denols"
			setup "rust_analyzer"
			setup "sumneko_lua", require"lua-dev".setup {}

			null_ls = require "null-ls"
			null_ls.setup
				sources: {
					null_ls.builtins.formatting.shfmt
					null_ls.builtins.diagnostics.shellcheck
				}
				on_attach: require"lsp-format".on_attach
	}

	use {
		"glepnir/lspsaga.nvim"
		config: -> require"lspsaga".init_lsp_saga!
	}

	use {
		"tombl/moon.nvim"
		ft: "moon"
		rocks: "moonscript"
		requires: {
			"jose-elias-alvarez/null-ls.nvim"
			"leafo/moonscript-vim"
		}
		config: -> require"moon-nvim".setup {}
	}

	use {
		"j-hui/fidget.nvim"
		config: -> require"fidget".setup {}
	}
	use {
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim"
		config: ->
			require"lsp_lines".setup!
			vim.diagnostic.config virtual_text: false
	}

	use {
		"hrsh7th/nvim-cmp"
		requires: {
			"hrsh7th/cmp-buffer"
			"hrsh7th/cmp-cmdline"
			"hrsh7th/cmp-nvim-lsp"
			"hrsh7th/cmp-path"
			"dcampos/nvim-snippy"
			"dcampos/cmp-snippy"
		}
		config: ->
			import setup, mapping, config from require "cmp"
			setup {
				snippet: expand: (args) ->
					require"snippy".expand_snippet args.body
				mapping: mapping.preset.insert
					"<C-b>": mapping.scroll_docs -4
					"<C-f>": mapping.scroll_docs 4
					"<C-Space>": mapping.complete!
					"<C-e>": mapping.abort!
					"<CR>": mapping.confirm select: true
				sources: config.sources {
					{ name: "nvim_lsp" }
					{ name: "copilot" }
					{ name: "snippy" }
				}
			}
			setup.cmdline "/", {
				mapping: mapping.preset.cmdline!
				sources: {
					{ name: "buffer" }
				}
			}
			setup.cmdline ":", {
				mapping: mapping.preset.cmdline!
				sources: {
					{ name: "cmdline" }
					{ name: "path" }
				}
			}
	}

	use {
		"navarasu/onedark.nvim"
		config: -> require"onedark".load!
	}


	use {
		"kyazdani42/nvim-web-devicons"
		as: "devicons"
	}

	use {
		"nvim-lualine/lualine.nvim"
		requires: "devicons"
		config: -> 
			config =
				options:
					theme: "onedark"
					component_separators: ""
					section_separators: left: "", right: ""
				sections:
					lualine_a: {}
					lualine_b: {}
					lualine_c: {}
					lualine_x: {}
					lualine_y: {}
					lualine_z: {}

			section = (where, what) ->
				table.insert config.sections["lualine_" .. where], what
			isection = (where, what) ->
				table.insert config.sections["lualine_" .. where], what
				table.insert config.inactive_sections["lualine_" .. where], what

			import get_icon_color_by_filetype from require "nvim-web-devicons"

			section "a", -> string.upper vim.fn.mode!
			section "c", ->
					name = vim.fn.expand "%:t"
					if not vim.bo.modifiable or vim.bo.readonly
						name ..= ""
					name

			section "x", {
				"diagnostics"
				sources: {"nvim_lsp"}
				symbols: error: " ", warn: " ", info: " "
			}
			section "x", "location"
			section "x", { ->
					ft = vim.api.nvim_buf_get_option 0, "filetype"
					icon, color = get_icon_color_by_filetype ft, default: true
					icon .. " "
				color: ->
					ft = vim.api.nvim_buf_get_option 0, "filetype"
					icon, color = get_icon_color_by_filetype ft, default: true
					fg: color
			}

			require"lualine".setup config
	}

	use {
		"kyazdani42/nvim-tree.lua"
		requires: "devicons"
		config: -> require"nvim-tree".setup!
	}

	use {
		"nvim-telescope/telescope.nvim"
		requires: "plenary"
	}

	use {
		"numToStr/Comment.nvim"
		config: -> require"Comment".setup!
	}

	use {
		"akinsho/bufferline.nvim"
		config: -> require"bufferline".setup
			options:
				diagnostics: "nvim_lsp"
				offsets: {
					{ filetype: "NvimTree", text: "Files", text_align: "left" }
				}
	}

	use {
		"ggandor/leap.nvim"
		config: -> require"leap".set_default_keymaps!
	}

	use {
		"Darazaki/indent-o-matic"
		config: -> require"indent-o-matic".setup {}
	}

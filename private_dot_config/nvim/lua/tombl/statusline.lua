require("lualine").setup({
	options = {
		globalstatus = true,
		theme = "base16",
		component_separators = "",
		section_separators = {
			left = "",
			right = "",
		},
	},
	extensions = { "nvim-tree" },
	sections = {
		lualine_a = {
			{
				"mode",
				fmt = function(s)
					return s:sub(1, 1)
				end,
				color = { gui = "bold" },
			},
		},
		lualine_b = {},
		lualine_c = {
			{
				"filename",
				cond = function()
					return vim.bo.buftype ~= "terminal"
				end,
				path = 3, -- absolute but s/$HOME/~
				symbols = {
					modified = "•",
					readonly = " ",
					unnamed = "no name",
					newfile = "new",
				},
			},
		},
		lualine_x = {
			{
				"diagnostics",
				sources = { "nvim_lsp" },
			},
			{
				"filetype",
				icons_enabled = false,
				color = function()
					local _icon, color =
						require("nvim-web-devicons").get_icon_color_by_filetype(vim.bo.filetype, { default = true })
					return { fg = color }
				end,
			},
		},
		lualine_y = { "branch" },
		lualine_z = {},
	},
})

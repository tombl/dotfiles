map = vim.keymap.set
mapc = (mode, key, cmd) ->
	map mode, key, ":"..cmd.."<CR>", silent: true

map "n", ";", ":"
map "t", "<C-o>", "<C-\\><C-n>"
mapc "n", "<C-n>", "bnext"
mapc "n", "<C-p>", "bprev"
mapc "n", "<Esc>", "nohl"

mapc "n", "<leader>t", "NvimTreeToggle"
mapc "n", "<leader>o", "Telescope find_files"
mapc "n", "<leader>r", "Lspsaga rename"
mapc "n", "<leader>a", "Lspsaga code_action"

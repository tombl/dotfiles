map = vim.keymap.set

map "t", "<C-o>", "<C-\\><C-n>"
map "n", "<C-n>", ":bnext<CR>", silent: true
map "n", "<C-p>", ":bprev<CR>", silent: true
map "n", "<Esc>", ":nohl<CR>", silent: true

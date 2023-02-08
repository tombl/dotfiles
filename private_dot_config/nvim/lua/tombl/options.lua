vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local indent = 2

vim.opt.autowrite = true
vim.opt.clipboard:append("unnamedplus") -- use system clipboard
-- vim.opt.cmdheight = 0 -- hide command line
vim.opt.conceallevel = 2 -- conceal unless replacement
vim.opt.confirm = true
vim.opt.cursorline = true -- highlight current line
vim.opt.fillchars = { eob = " " } -- hide ~ at EndOfBuffer
vim.opt.grepprg = "rg --vimgrep"
vim.opt.hlsearch = false -- don't highlight search results
vim.opt.laststatus = 3 -- global statusline
vim.opt.list = true -- show whitespace
vim.opt.listchars = { tab = "  ", trail = "·", extends = "»", precedes = "«" }
vim.opt.mouse = "a" -- enable mouse
vim.opt.scrolloff = 4 -- lines of context
vim.opt.shiftwidth = indent -- indent size
vim.opt.shortmess:append("A") -- disable swapfile warning
vim.opt.shortmess:append("I") -- disable intro message
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes" -- always show signcolumn, fixes shifting
vim.opt.smartcase = true -- ignore case if any caps
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = indent -- tabsize
vim.opt.termguicolors = true -- true color support
vim.opt.undofile = true -- persistent undo
vim.opt.updatetime = 300 -- faster swapfiles and CursorHold
vim.opt.wrap = false

vim.opt.pumblend = 10 -- popup blends?

vim.wo.number = true -- show line numbers
vim.api.nvim_create_autocmd("TermOpen", {
	callback = function()
		vim.opt_local.number = false
		vim.cmd("startinsert")
	end,
})

vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "<esc>", "<cmd>noh<cr>", { silent = true })
vim.keymap.set("t", "<C-o>", "<C-\\><C-n>")

-- restore visual selection after indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

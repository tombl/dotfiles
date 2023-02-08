local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("tombl.options")

require("lazy").setup({
	spec = { import = "tombl.plugins" },
	defaults = { lazy = { true } },
	change_detection = { notify = false },
})

require("tombl.color")

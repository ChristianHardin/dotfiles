-- lua/config/options.lua
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

-- Disable editor config (tmp)
vim.g.editorconfig = true

-- Pop up small terminal
vim.api.nvim_create_autocmd('TermOpen', {
	group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

vim.keymap.set("n", "<space>st", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 5)
end)

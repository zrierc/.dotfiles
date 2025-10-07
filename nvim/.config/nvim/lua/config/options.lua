-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.colorcolumn = "80" -- Show vertical line at column 80

vim.opt.hlsearch = false -- Don't highlight search results
vim.opt.incsearch = true -- Show search matches as you type

-- -- text wrap
vim.opt.wrap = true
-- vim.opt.textwidth = 0
-- vim.opt.wrapmargin = 0
-- vim.opt.linebreak = true
-- vim.opt.list = false
-- vim.opt.columns = 80

-- linter and formatter for TS/JS
vim.g.lazyvim_eslint_auto_format = true
vim.g.lazyvim_prettier_needs_config = false

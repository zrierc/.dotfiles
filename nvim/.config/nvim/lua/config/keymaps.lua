-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set = vim.keymap.set
local del = vim.keymap.del

-- disable floating terminal
-- NOTE: some terminal translate <C-/> to <C-_> and default LazyVim use both
del("n", "<C-/>")
del("n", "<C-_>")
del("t", "<C-/>")
del("t", "<C-_>")

-- map toggle comment
set("n", "<C-/>", "<cmd>normal gcc<cr>", { desc = "Toggle comment line", noremap = true, silent = true })
set("n", "<C-_>", "<cmd>normal gcc<cr>", { desc = "Toggle comment line", noremap = true, silent = true })
set("v", "<C-/>", "<cmd>normal gc<cr>", { desc = "Toggle comment multiple lines", noremap = true, silent = true })
set("v", "<C-_>", "<cmd>normal gc<cr>", { desc = "Toggle comment multiple lines", noremap = true, silent = true })

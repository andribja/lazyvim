-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.mouse = ""
vim.g.snacks_animate = false

-- seems to be only way to disable Ctrl+K in insert mode
vim.opt.digraph = false

vim.g.ai_cmp = false
-- Disable inlay hints globally
vim.lsp.inlay_hint.enable(false)

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>ci", "<cmd>GoImports<cr>", { desc = "Go to Left Window", remap = true })
map("n", "<leader>aa", "<cmd>CodeCompanionActions<cr>", { desc = "CodeCompanion Actions" })
map("n", "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "CodeCompanion Chat" })
map("n", "<leader>ad", "<cmd>CodeCompanion<cr>", { desc = "CodeCompanion Inline" })
-- Visual mode mappings
map("v", "<leader>aa", "<cmd>CodeCompanionActions<cr>", { desc = "CodeCompanion Actions" })
map("v", "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "CodeCompanion Chat" })
map("n", "<leader>gb", "<cmd>Git blame<cr>", { desc = "Git blame full file" })

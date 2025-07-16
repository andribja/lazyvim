return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
  },
  keys = {
    { "<c-k>", false, mode = "i" }, -- interferes with completion navigation keybinds
  },
}

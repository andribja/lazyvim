return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
  },
  keys = {
    -- Disable Ctrl+K in insert mode to avoid conflicts with completion
    { "<c-k>", false, mode = "i" },
  },
}

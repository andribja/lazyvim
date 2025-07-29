return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      golangci_lint_ls = {
        cmd = { "golangci-lint-langserver" },
        root_dir = require("lspconfig.util").root_pattern("go.mod", ".git"),
        filetypes = { "go", "gomod" },
        init_options = {
          command = {
            "golangci-lint",
            "run",
            "--enable-only=revive,errcheck",
            "--output.json.path=stdout",
            "--show-stats=false",
            "--issues-exit-code=1",
          },
        },
      },
    },
  },
  keys = {
    -- Disable Ctrl+K in insert mode to avoid conflicts with completion
    { "<c-k>", false, mode = "i" },
  },
}

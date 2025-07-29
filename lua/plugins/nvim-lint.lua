return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      -- go = { "golangci_lint" },
    },
    linters = {
      sqlfluff = {
        args = {
          "lint",
          "--format=json",
          "--dialect=postgres",
        },
      },
      golangci_lint = {
        cmd = "golangci-lint",
        stdin = false,
        args = {
          "run",
          "--enable-only=revive,errcheck",
          "--issues-exit-code=0",
          "./...",
        },
        parser = require("lint.parser").from_errorformat("%f:%l:%c: %m", {
          source = "golangci-lint",
        }),
      },
    },
  },
}

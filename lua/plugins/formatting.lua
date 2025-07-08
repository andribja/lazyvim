return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        go = { "golangci-lint" },
      },
      formatters = {
        ["golangci-lint"] = {
          command = "golangci-lint",
          args = { "fmt", "--stdin" },
          stdin = true,
        },
      },
    },
  },
}

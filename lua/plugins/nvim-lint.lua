return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      go = { "golangcilint" },
    },
    linters = {
      sqlfluff = {
        args = {
          "lint",
          "--format=json",
          "--dialect=postgres",
        },
      },
    },
  },
}

return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      go = { "golangcilint" },
    },
    linters = {
      golangcilint = {
        args = {
          "run",
          "--enable-only",
          "revive,govet", -- specify your desired linters
        },
      },
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

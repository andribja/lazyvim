return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        go = { "golangci-lint" },
        sql = { "sqlfluff" },
      },
      formatters = {
        ["golangci-lint"] = {
          command = "golangci-lint",
          args = { "fmt", "--stdin" },
          stdin = true,
        },
        sqlfluff = {
          command = "sqlfluff",
          args = {
            "fix",
            "--no-safety", -- disables root file check
            "--dialect",
            "postgres", -- or mysql, snowflake, etc.
            "--disable-progress-bar",
            "-",
          },
          stdin = true,
        },
        pgformat = {
          command = "pg_format",
          args = {
            "--no-rcfile",
            "--no-space-function",
            "--wrap-limit",
            "120",
          },
          stdin = true,
        },
      },
    },
  },
}

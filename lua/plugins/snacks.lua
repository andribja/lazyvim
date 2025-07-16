return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true, -- Include hidden files
          },
        },
        formatters = {
          file = {
            truncate = 80, -- Increase truncation limit
          },
        },
      },
    },
  },
}

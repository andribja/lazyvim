return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true, -- Include hidden files
          },
          grep = {
            hidden = true, -- Include hidden files in grep search
          },
          live_grep = {
            hidden = true, -- Include hidden files in live grep
          },
          git_files = {
            hidden = true, -- Include hidden files in git file search
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

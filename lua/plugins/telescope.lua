return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      file_ignore_patterns = {
        "**/node_modules/*",
        ".git/logs/*",
        -- "**/generated/*",
      },
      pickers = {
        find_files = {
          hidden = true, -- Show hidden files by default
          no_ignore = false, -- Still respect .gitignore
        },
        live_grep = {
          additional_args = function()
            return { "--hidden" }
          end,
        },
      },
    },
  },
}

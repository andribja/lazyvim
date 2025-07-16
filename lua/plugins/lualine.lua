return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        function()
          local ok, conform = pcall(require, "conform")
          if ok and conform.is_formatting() then
            return "󰉼 Formatting..."
          end
          return ""
        end,
        color = { fg = "#ff9e64" },
      })
      return opts
    end,
  },
}

return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.gopls = opts.servers.gopls or {}
      -- Create organize imports command using gopls
      opts.servers.gopls.on_attach = function(client, bufnr)
        vim.api.nvim_buf_create_user_command(bufnr, "GoImports", function()
          vim.lsp.buf.code_action({
            context = { only = { "source.organizeImports" } },
            apply = true,
          })
        end, {})

        vim.keymap.set("n", "<leader>ci", "<cmd>GoImports<cr>", {
          buffer = bufnr,
          desc = "Organize Imports",
        })
      end
      return opts
    end,
  },
}

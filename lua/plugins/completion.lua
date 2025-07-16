return {
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        providers = {
          copilot = {
            score_offset = -20,
          },
        },
      },
      -- https://cmp.saghen.dev/configuration/keymap.html#default
      keymap = {
        preset = "enter",
        ["<Tab>"] = { "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "snippet_backward", "fallback" },

        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },

        ["<S-k>"] = { "scroll_documentation_up", "fallback" },
        ["<S-j>"] = { "scroll_documentation_down", "fallback" },

        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide", "fallback" },
      },
    },
  },
}

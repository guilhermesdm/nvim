return {
  {
    "zbirenbaum/copilot.lua",
    cond = true,
    lazy = false,
    cmd = "Copilot",
    event = "VeryLazy",
    opts = {
      panel = { enabled = false, auto_refresh = true },
      suggestion = {
        enabled = false,
        auto_trigger = true,
        keymap = {
          accept = "<TAB>",
          accept_word = "<C-w>",
          accept_line = "<C-l>",
          next = "<C-j>",
          prev = "<C-k>",
          dismiss = "<ESC>",
        },
      },
    },
  },
}

---@type NvPluginSpec
-- NOTE: Git Signs
return {
  "lewis6991/gitsigns.nvim",
  init = function()
    vim.keymap.set(
      "n",
      "<leader>gp",
      "<cmd>lua require 'gitsigns'.preview_hunk()<cr>",
      { desc = "Gitsigns | Preview Hunk", silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>gj",
      "<cmd>lua require 'gitsigns'.next_hunk()<cr>",
      { desc = "Gitsigns | Next Hunk", silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>gk",
      "<cmd>lua require 'gitsigns'.prev_hunk()<cr>",
      { desc = "Gitsigns | Prev Hunk", silent = true }
    )
    vim.keymap.set(
      "n",
      "<leader>gl",
      "<cmd>lua require 'gitsigns'.blame_line()<cr>",
      { desc = "Gitsigns | Blame Line", silent = true }
    )
  end,
  event = {
    "BufReadPost",
    "BufNewFile",
  },
  opts = {
    current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
      delay = 500,
      ignore_whitespace = false,
      virt_text_priority = 100,
      use_focus = true,
    },
    signs = {
      add = { text = "│" },
      change = { text = "│" },
      delete = { text = "󰍵" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "│" },
    },
    on_attach = function() end,
  },
}

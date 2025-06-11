return {
  {
    "olimorris/codecompanion.nvim",
    enabled = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
    },
    keys = {
      { "<leader>ccl", "<cmd>CodeCompanion<CR>",     desc = "Inline" },
      { "<leader>ccc", "<cmd>CodeCompanionChat<CR>", desc = "Chat" },
    },
    opts = {
      opts = {
        log_level = "DEBUG",
      },
      display = {
        chat = {
          show_settings = true,
        }
      },
      strategies = {
        chat = {
          chat = { adapter = 'anthropic' },
          inline = { adapter = 'anthropic' },
          keymaps = {
            completion = {
              modes = {
                i = "<C-x>"
              },
              index = 1,
              callback = "keymaps.completion",
              description = "Completion Menu",
            }
          },
        },
        inline = {
          adapter = "anthropic",
        },
        agent = {
          adapter = "anthropic",
        },
      },
      adapters = {
        anthropic = function ()
          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = "",
            }
          })
        end,
      },
    }
  }
}

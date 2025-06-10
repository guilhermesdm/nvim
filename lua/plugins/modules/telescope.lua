local git_icons = {
  added =  "   ",
  changed = " 󰏬  ",
  copied = ">",
  deleted = "   ",
  renamed = "➡",
  unmerged = "‡",
  untracked = "?",
}

return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require('telescope').load_extension('fzf')
      local actions = require('telescope.actions')

      require('telescope').setup {
        defaults = {
          border            = true,
          hl_result_eol     = true,
          multi_icon        = '',
          vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
          },
          layout_config     = {
            vertical = {
              preview_cutoff = 120,
            },
            prompt_position = "top",
          },
          file_sorter       = require('telescope.sorters').get_fzy_sorter,
          prompt_prefix     = '  ',
          color_devicons    = true,
          git_icons         = git_icons,
          sorting_strategy  = "ascending",
          file_previewer    = require('telescope.previewers').vim_buffer_cat.new,
          grep_previewer    = require('telescope.previewers').vim_buffer_vimgrep.new,
          qflist_previewer  = require('telescope.previewers').vim_buffer_qflist.new,
          mappings          = {
            i = {
              ["<C-x>"] = false,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
              ["<C-s>"] = actions.cycle_previewers_next,
              ["<C-a>"] = actions.cycle_previewers_prev,
              ["<C-d>"] = actions.delete_buffer,
              ["<ESC>"] = actions.close,
            },
            n = {
              ["<C-s>"] = actions.cycle_previewers_next,
              ["<C-a>"] = actions.cycle_previewers_prev,
            }
          }
        },
        extensions = {
          fzf = {
            override_generic_sorter = false,
            override_file_sorter = true,
            case_mode = "smart_case",
          }
        }
      }
    end,
    dependencies = {
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    cmd = "Telescope",
    keys = {
    }
  }
}

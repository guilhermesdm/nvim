return {
  {
    'saghen/blink.cmp',
    lazy = false,
    dependencies = {
      'rafamadriz/friendly-snippets',
      { 'echasnovski/mini.icons', version = '*' },
    },
    version = '*',
    opts = {
      enabled = function()
        return not (string.find(vim.bo.filetype, "himalaya") or string.find(vim.bo.filetype, "mail"))
      end,
      keymap = {
        preset = 'default',
        ['<C-u>'] = { 'select_prev', 'fallback' },
        ['<C-d>'] = { 'select_next', 'fallback' },
        ['<Tab>'] = { 'accept', 'fallback' },
        ['<C-space>'] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },
      },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          lazydev = { name = "LazyDev", module = "lazydev.integrations.blink", fallbacks = { "lsp" } },
        },
      },
      signature = {
        enabled = true,
        window = {
          max_width = 160,
          max_height = 30,
          scrollbar = true,
          show_documentation = false,
        }
      },
      completion = {
        accept = {
          auto_brackets = {
            enabled = true
          }
        },
        menu = {
          border = "single",
          winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None",
          winblend = 0,
          draw = {
            treesitter = { 'lsp' },
            columns = { { 'kind_icon' }, { 'label' } },
            components = {
              kind_icon = {
                ellipsis = false,
                text = function(ctx)
                  local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
                  return kind_icon
                end,
                highlight = function(ctx)
                  local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
                  return hl
                end,
              }
            }
          }
        },
        documentation = {
          auto_show = true,
          window = {
            border = 'single',
            max_width = 160,
            max_height = 30,
            winblend = 0,
            winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None",
          }
        },
      },
    },
  },
}

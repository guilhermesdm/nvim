-- Setup installer & lsp configs
local mason = require("mason")
local mason_lsp = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup({
  ui = {
    border = "rounded",
  },
})

mason_lsp.setup({
  ensure_installed = {
    "eslint",
    "html",
  },
  automatic_installation = true,
})

local handlers = {
  ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    silent = true,
    border = "rounded",
  }),
  ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
}

local capabilities = require('blink.cmp').get_lsp_capabilities()

local function on_attach(client, bufnr)
  vim.lsp.inlay_hint.enable(true, { bufnr })
end

require("mason-lspconfig").setup {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function(server_name)
    require("lspconfig")[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      handlers = handlers,
    }
  end,

  ["ts_ls"] = function()
    require("typescript-tools").setup({
      capabilities = capabilities or vim.lsp.protocol.make_client_capabilities(),
      handlers = require("config.lsp.servers.tsserver").handlers,
      on_attach = require("config.lsp.servers.tsserver").on_attach,
      settings = require("config.lsp.servers.tsserver").settings,
    })
  end,

  ["eslint"] = function()
    lspconfig.eslint.setup({
      capabilities = capabilities,
      handlers = handlers,
      on_attach = require("config.lsp.servers.eslint").on_attach,
      settings = require("config.lsp.servers.eslint").settings,
      flags = {
        allow_incremental_sync = false,
        debounce_text_changes = 1000,
        exit_timeout = 1500,
      },
    })
  end,
}

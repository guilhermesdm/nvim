return {
	{ 'williamboman/mason.nvim', 
    config = function() require('mason').setup {} end,
    opts = { ensure_installed = {"prettier"} }
  },
	{ 'williamboman/mason-lspconfig.nvim'},
}

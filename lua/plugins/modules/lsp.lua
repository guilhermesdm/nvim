return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"saghen/blink.cmp",
		"b0o/schemastore.nvim",
	},
	config = function()
		require("plugins.modules.lsp.servers")
		require("plugins.modules.lsp.progress")
		require("plugins.modules.lsp.diagnostic")
	end,
}

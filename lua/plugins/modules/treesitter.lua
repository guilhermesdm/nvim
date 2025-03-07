return {
	"nvim-treesitter/nvim-treesitter",
	build = "TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			enable = true,
			auto_install = true,
			sync_install = false,
			modules = {},
			ignore_install = {},
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"query",
				"javascript",
				"typescript",
				"tsx",
				"svelte",
				"rust",
				"css",
				"html",
				"json",
				"jsonc",
				"yaml",
				"toml",
				"diff",
				"ini",
				"gitcommit",
				"gitignore",
				"git_config",
				"markdown",
				"markdown_inline",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = "<C-s>",
					node_decremental = "<M-space>",
				},
			},
		})
	end,
}

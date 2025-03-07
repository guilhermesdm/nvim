return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	opts = {
		sources = { "filesystem", "buffers", "git_status" },
		filesystem = {
			follow_current_file = { enabled = true },
		},
		window = {
			mappings = {
				["l"] = "open",
				["h"] = "close_node",
				["<space>"] = "none",
				["P"] = { "toggle_preview", config = { use_float = false } },
			},
		},
	},
	config = function(_, opts)
		require("neo-tree").setup({
			event_handlers = {
				{
					event = "file_opened",
					handler = function(file_path)
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
		})
	end,
}

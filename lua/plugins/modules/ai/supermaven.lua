return {
	{
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({
				keymaps = {
					accept_suggestion = "<C-j>",
				},
				color = {
					suggestion_color = "#00ff00",
					cterm = 244,
				},
			})
		end,
	},
}

return {
  'TobinPalmer/pastify.nvim',
  cmd = { 'Pastify', 'PastifyAfter' },
  config = function()
    require('pastify').setup {
      opts = {
		local_path = 'Projects/resources/autopasted-neovim-images/',
		save = 'local',
		filename = function() return vim.fn.expand("%:t:r") .. '_' .. os.date("%Y-%m-%d_%H-%M-%S") end,
      },

	  ft = {
		  markdown = '![pasted image]($IMG$)',
	  },
    }
  end
}

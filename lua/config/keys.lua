local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Move text up and down
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("n", "<A-j>", ":m .+1<CR>==", opts)

keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
keymap('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
keymap('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
keymap('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

keymap('v', '<leader>p', ':PastifyAfter<CR>', opts)
keymap('n', '<leader>p', ':PastifyAfter<CR>', opts)
keymap('n', '<leader>P', ':Pastify<CR>', opts)

keymap({'n', 'x', 'o'}, 's',  '<Plug>(leap-forward)')
keymap({'n', 'x', 'o'}, 'S',  '<Plug>(leap-backward)')
keymap({'n', 'x', 'o'}, 'sl', '<Plug>(leap-from-window)')

-- File actions
keymap('n', '<leader>w', vim.cmd.w)

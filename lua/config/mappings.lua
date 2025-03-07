local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Move text up and down
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("n", "<A-j>", ":m .+1<CR>==", opts)

keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

keymap({'n', 'x', 'o'}, 's',  '<Plug>(leap-forward)')
keymap({'n', 'x', 'o'}, 'S',  '<Plug>(leap-backward)')
keymap({'n', 'x', 'o'}, 'sl', '<Plug>(leap-from-window)')

-- File actions
keymap('n', '<leader>w', vim.cmd.w)

-- Nvim Tree
keymap("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
keymap("n", "<C-h>", "<cmd> NvimTreeFocus <CR>")

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "find grep" })

-- Spectre
keymap('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
keymap('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
keymap('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
keymap('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})

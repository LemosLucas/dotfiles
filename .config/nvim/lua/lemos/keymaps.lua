local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Set space as leader key
keymap('', '<Space>', '<Nop', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- All Modes
-- Move cursor on window
keymap('', 'sh', '<C-w>h', opts)
keymap('', 'sj', '<C-w>j', opts)
keymap('', 'sk', '<C-w>k', opts)
keymap('', 'sl', '<C-w>l', opts)
-- Move Window
keymap('', 'Sh', '<C-w>H', opts)
keymap('', 'Sj', '<C-w>J', opts)
keymap('', 'Sk', '<C-w>K', opts)
keymap('', 'Sl', '<C-w>L', opts)


-- Normal mode
-- Split Window
keymap('n', 'ss', ':split<Return>', opts)
keymap('n', 'sv', ':vsplit<Return>', opts)


-- Nvim-tree
keymap('n', '<leader>e', ':NvimTreeToggle<Return>', opts)

-- Format documents
keymap('n', '<leader>fo', ':Format<Return>', opts)

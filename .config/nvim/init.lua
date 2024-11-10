-- Load all lua configuration files
require('lemos.neovim-options') -- My custom editor options
require('lemos.nvim-tree')      -- Nvim-tree configuration
require('lemos.keymaps')        -- My custom keymaps
require('lemos.plugins')        -- Load all installed plugins
require('lemos.colorscheme')    -- Set color scheme
require('lemos.cmp')            -- My custom cmp configs
require('lemos.lsp')            -- My custom lsp config
require('lemos.treesitter')     -- My custom treesitter config
require('lemos.telescope')      -- My custom telescope config
require('lemos.null-ls')        -- Configs for linting and formatting
require('lemos.supermaven')     -- Supermaven configs

print('llemos: lua config loaded')

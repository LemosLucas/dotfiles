-- Load all lua configuration files
require ('lemos.neovim-options')      -- My custom editor options
require ('lemos.keymaps')             -- My custom keymaps
require ('lemos.plugins')             -- Load all installed plugins
require ('lemos.colorscheme')         -- Set color scheme
require ('lemos.cmp')                 -- My custom cmp configs
require ('lemos.lsp')                 -- My custom lsp config
require ('lemos.treesitter')          -- My custom treesitter config
require ('lemos.telescope')           -- My custom telescope config

print ('Arraay, loading from lua')


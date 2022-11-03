-- Disabling netrw since 'nvim-tree' will be loaded to replace it
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set custom options for neovim configuration
local options = {
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
	expandtab = true,
  smartindent = true,
  smartcase = true,
  smarttab = true,
--  guicursor = '',
  termguicolors = true,
  background = 'dark',
  number = true,
  relativenumber = true,
  wrap = false,
  incsearch = true,
  inccommand = 'split',
  scrolloff = 8,
  splitright = true,
  splitbelow = true,
  showcmd = true,
  cmdheight = 1,
  laststatus=2
}

-- Use the `vim.opt` API to write all options
for key, value in pairs(options) do
  vim.opt[key] = value
end

-- Search down on subfolders
vim.opt.path:append {'**'}

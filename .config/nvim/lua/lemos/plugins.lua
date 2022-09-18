local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  print ('Unable to load Packer. Exiting from ' .. vim.api.nvim_buf_get_name(0))
  return
end

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- Tree sitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'kyazdani42/nvim-web-devicons'

    -- Colorscheme
    use 'ellisonleao/gruvbox.nvim'


    -- Completion engine plugins
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lua'
    use 'saadparwaiz1/cmp_luasnip'

    -- LSP
    use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    }

    -- Snippets engine
    use 'L3MON4D3/LuaSnip'

end)


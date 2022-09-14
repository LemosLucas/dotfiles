return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'kyazdani42/nvim-web-devicons'
end)



--Plug 'nvim-lua/popup.nvim'
--Plug 'https://github.com/BurntSushi/ripgrep'
--Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
--Plug 'https://github.com/sharkdp/fd'
--Plug 'gruvbox-community/gruvbox'


--colorscheme gruvbox
--highlight Normal guibg=none

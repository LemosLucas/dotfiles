if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif


call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'https://github.com/BurntSushi/ripgrep'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/sharkdp/fd'
Plug 'gruvbox-community/gruvbox'
call plug#end()


colorscheme gruvbox
highlight Normal guibg=none

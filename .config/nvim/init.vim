" Important and Basic settings    
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set smarttab
set exrc
set guicursor=
set relativenumber
set nu
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch " Shows search results as you type
set inccommand=split " Similar to incsearch, but for substitution
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set path+=** " Search down on subfolders
set showcmd
set cmdheight=1
set laststatus=2

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.php,.py,.md


" Imports
runtime ./plug.vim

" Mappings
runtime ./mappings.vim

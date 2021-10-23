let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR> 
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>gf <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fbf <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader><C-P> <cmd>:Telescope<cr>
nnoremap <leader>fbr <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <leader>fbn <cmd>lua require('lemos.telescope').edit_neovim()<cr>

local M = {}

function M.edit_neovim()

    require('telescope.builtin').find_files {
        cwd = "~/.config/nvim",
        prompt_title = "~ dotfiles ~"
    }

end

return M

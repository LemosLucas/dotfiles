local status_ok, supermaven = pcall(require, "supermaven-nvim")
if not status_ok then
  print ("Unable to load 'supermaven-nvim' plugin")
  return
end

supermaven.setup({
  keymaps = {
    accept_suggestion = "<Tab>",
    clear_suggestion = "<C-]>",
    accept_word = "<C-j>",
  },
  ignore_filetypes = {""}, -- or { "cpp", }
  color = {
    suggestion_color = "#ffffff",
    cterm = 244,
  },
  log_level = "debug", -- set to "off" to disable logging completely
  disable_inline_completion = true, -- disables inline completion for use with cmp
  disable_keymaps = false, -- disables built in keymaps for more manual control
  condition = function()
    return false
  end -- condition to check for stopping supermaven, `true` means to stop supermaven when the condition is true.
})

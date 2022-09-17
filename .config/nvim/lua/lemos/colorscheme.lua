--[[local status_ok, _ = pcall(require, 'gruvbox')
if not status_ok then
  print('darkplus plugin not available. Falling back to default colorscheme')
  return
end
]]
--vim.cmd('colorscheme darkplus')

vim.cmd('colorscheme gruvbox')

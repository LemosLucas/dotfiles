local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  print ("Unable to load 'nvim-tree' plugin")
  return
end

nvim_tree.setup()

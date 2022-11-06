-- 加载nvim-tree

local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("nvim-tree not found!")
  return
end

local list_keys = require('keybindings').nvimTreeList
nvim_tree.setup({
  git = {
    enable = false,
  },
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  filters = {
    custom = {'node_modules'},
  }
})

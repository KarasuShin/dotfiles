-- 基础配置
require('basic')
-- 插件
require('plugins')
-- 主题配置
require('colorscheme')
-- 快捷键
require('keybindings')
-- 插件配置
require('plugin-config.nvim-tree')
require('plugin-config.bufferline')
require('plugin-config.lualine')
require('plugin-config.telescope')
require('plugin-config.dashboard')
require('plugin-config.project')

require('lsp.setup')
require('lsp.cmp')

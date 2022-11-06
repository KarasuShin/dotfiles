local status, mason = pcall(require, "mason")
if not status then
  vim.notify("没有找到 mason")
  return
end

local status, mason_config = pcall(require, "mason-lspconfig")
if not status then
  vim.notify("没有找到 mason-lspconfig")
  return
end

local status, lspconfig = pcall(require, "lspconfig")
if not status then
  vim.notify("没有找到 lspconfig")
  return
end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

mason_config.setup({
  ensure_installed = {
    "sumneko_lua",
    "tsserver",
    "tailwindcss",
    "bashls",
    "cssls",
    "dockerls",
    "emmet_ls",
    "html",
    "jsonls",
    "pyright",
    "taplo",
    "yamlls",
  },
})

-- 安装列表
local servers = {
  sumneko_lua = require('lsp.config.lua'),
  bashls = require('lsp.config.bash'),
  pyright = require('lsp.config.pyright'),
  html = require('lsp.config.html'),
  cssls = require('lsp.config.css'),
  emmet_ls = require('lsp.config.emmet'),
  jsonls = require('lsp.config.json'),
  tsserver = require('lsp.config.typescript'),
  yamlls = require('lsp.config.yml'),
  dockerls = require('lsp.config.docker'),
  tailwindcss = require('lsp.config.tailwindcss'),
  taplo = require('lsp.config.toml'),
}

for name, config in pairs(servers) do
  if config ~= nil and type(config) == "table" then
    -- 自定义初始化配置文件必须实现on_setup 方法
    config.on_setup(lspconfig[name])
  else
    -- 使用默认参数
    lspconfig[name].setup({})
  end
end

require("lsp.ui")

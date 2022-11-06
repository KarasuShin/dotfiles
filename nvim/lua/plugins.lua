local packer = require("packer")
packer.startup({
    function(use)
        use 'wbthomason/packer.nvim'
        use 'folke/tokyonight.nvim'
        use {
          'kyazdani42/nvim-tree.lua',
          requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
          } 
        }
        use {
          'akinsho/bufferline.nvim',
          requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
            'moll/vim-bbye'
          }
        }
        use {
          'nvim-lualine/lualine.nvim',
          requires = {
            'kyazdani42/nvim-web-devicons'
          }
        }
        use {
          'nvim-telescope/telescope.nvim',
          requires = {
            'nvim-lua/plenary.nvim'
          }
        }
        use 'LinArcX/telescope-env.nvim'
        use 'glepnir/dashboard-nvim'
        use 'ahmedkhalf/project.nvim'
        use {
          'nvim-treesitter/nvim-treesitter',
          run = ':TSUpdate'
        }
        use 'williamboman/mason.nvim'
        use 'williamboman/mason-lspconfig.nvim'
        use 'neovim/nvim-lspconfig'
        
        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")

        -- UI 增强
        use("onsails/lspkind-nvim")
        use("tami5/lspsaga.nvim")
        -- 代码格式化
        use("mhartington/formatter.nvim")
        use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
        -- TypeScript 增强
        use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
        use("jose-elias-alvarez/typescript.nvim")

        -- Lua 增强
        use("folke/neodev.nvim")
        -- JSON 增强
        use("b0o/schemastore.nvim")
        -- Rust 增强
        use("simrat39/rust-tools.nvim")
    end,
    config = {
        max_jobs = 16,
        display = {
            open_fn = function()
                return require("packer.util").float({ border = "single" })
            end,
        }
    }
})

local packer = require("packer")
packer.startup(
   function(use)
    -- Packer 可以管理自己本身
    use("wbthomason/packer.nvim")
    -- nvim-tree --
    use({ "nvim-tree/nvim-tree.lua", requires = "nvim-tree/nvim-web-devicons" })
    -- 主题颜色
    use("folke/tokyonight.nvim")
    use("jaredgorski/fogbell.vim")
    use("cocopon/iceberg.vim")
    use("nordtheme/vim")
    use("catppuccin/nvim")
    use("doums/darcula")
    use("Mofiqul/vscode.nvim")
    -- ----------------------------------
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
    use{ 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    --------------------- LSP --------------------
    use({"williamboman/mason.nvim"})
    use({"williamboman/mason-lspconfig.nvim" })
    -- Lspconfig
    use({"neovim/nvim-lspconfig"})
    -- 补全引擎
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/vim-vsnip")
    use("hrsh7th/vim-vsnip-integ")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("rafamadriz/friendly-snippets")
    -- 启动页插件
    -- dashboard-nvim (新增)
    use("glepnir/dashboard-nvim")
    -- project
    use("ahmedkhalf/project.nvim")
    -- floatterm
    use("voldikss/vim-floaterm")
    -- auto-pairs
    use("windwp/nvim-autopairs")
    -- lsp_signature
    use("ray-x/lsp_signature.nvim")
    use("CRAG666/code_runner.nvim")
    use("ggandor/leap.nvim")
    use("numToStr/Comment.nvim")
    end
)


pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)


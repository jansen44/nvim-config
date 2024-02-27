return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'


    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-dap",
        "jose-elias-alvarez/null-ls.nvim",
        "simrat39/rust-tools.nvim",
    }

    use 'mfussenegger/nvim-jdtls'

    use 'nvim-lua/plenary.nvim'

    use 'nvim-telescope/telescope.nvim'

    use 'BurntSushi/ripgrep'

    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

    use 'nvim-treesitter/nvim-treesitter'
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }


    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        }
    }

    use {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
    }

    use {
        "leoluz/nvim-dap-go",
    }

    use 'andweeb/presence.nvim'
    use 'akinsho/toggleterm.nvim'
    use 'ojroques/nvim-bufdel'

    use 'tpope/vim-repeat'
    use 'ggandor/leap.nvim'

    use "startup-nvim/startup.nvim"

    use 'christoomey/vim-tmux-navigator'

    require('editorconfig').properties.foo = function(bufnr, val)
        vim.b[bufnr].foo = val
    end

    -- use 'folke/tokyonight.nvim'
    -- use "rebelot/kanagawa.nvim"
    use { "catppuccin/nvim", as = "catppuccin" }
end)

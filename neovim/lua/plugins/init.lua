require("packer").startup(function()
    -- Packer manager
    use 'wbthomason/packer.nvim'

    -- General purpose plugins
    use 'nvim-lua/plenary.nvim'

    -- themes
    use 'folke/tokyonight.nvim'

    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
    
    -- Language server plugins
    use 'neovim/nvim-lspconfig'

    -- Autocomplete Plugins
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'onsails/lspkind-nvim'

    -- Fuzzy finders
    use 'nvim-telescope/telescope.nvim'

    -- telescope extensions

    use "nvim-telescope/telescope-file-browser.nvim"

end)

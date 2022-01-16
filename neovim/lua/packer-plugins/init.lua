require("packer").startup(function()
    -- packer manager
    use 'wbthomason/packer.nvim'

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
end)

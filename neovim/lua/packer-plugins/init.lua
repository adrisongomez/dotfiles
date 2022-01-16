require("packer").startup(function()
    use 'wbthomason/packer.nvim'
    -- use 'rktjmp/lush.nvim'
    use 'folke/tokyonight.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
    use 'neovim/nvim-lspconfig'
end)

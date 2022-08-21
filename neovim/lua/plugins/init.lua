local packer = require("packer")
local use = packer.use

packer.startup(function()
	-- Packer manager
	use("wbthomason/packer.nvim")

	-- General purpose plugins
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")

	-- themes
	-- use("marko-cerovac/material.nvim")
	use("projekt0n/github-nvim-theme")

	-- icons suppors
	use({ "kyazdani42/nvim-web-devicons", opt = true })

	-- statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/highlight.lua")
	use("nvim-treesitter/playground")

	-- LSP utillity
	use({ "neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer" })
	use({ "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" })
	-- use("jose-elias-alvarez/null-ls.nvim")

    -- Formatter
	use({ "mhartington/formatter.nvim" })

	-- Autocomplete Plugins
	use("onsails/lspkind-nvim")
	use("hrsh7th/nvim-cmp")

	-- sources autocomplete
	use("ray-x/cmp-treesitter")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("saadparwaiz1/cmp_luasnip")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- utillity plugins
	use("tpope/vim-commentary")
	use("tpope/vim-surround")

	-- telescope
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
	use("nvim-telescope/telescope-file-browser.nvim")

	-- Git integration
	use("lewis6991/gitsigns.nvim")
	use("sindrets/diffview.nvim")
	use("tpope/vim-fugitive")
	use("pwntester/octo.nvim")
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})

	use("rinx/nvim-minimap")

	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	-- use("ThePrimeagen/harpoon")
end)

vim.cmd([[
    let g:minimap#default_auto_cmds_enabled = 1
    let g:minimap#highlight#group = 1
]])

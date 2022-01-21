local packer = require("packer")
local use = packer.use

packer.startup(function()
	-- Packer manager
	use("wbthomason/packer.nvim")

	-- General purpose plugins
	use("nvim-lua/plenary.nvim")

	-- themes
	use("marko-cerovac/material.nvim")

	use({ "kyazdani42/nvim-web-devicons", opt = true })

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/highlight.lua")

	-- LSP utillity
	use("neovim/nvim-lspconfig")

	-- LSP installer
	use("williamboman/nvim-lsp-installer")

	-- LSP Utils
	use("jose-elias-alvarez/null-ls.nvim")

	-- Autocomplete Plugins
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("saadparwaiz1/cmp_luasnip")
	use("onsails/lspkind-nvim")
	use("ray-x/cmp-treesitter")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- comments
	use("tpope/vim-commentary")

	-- Fuzzy finders
	use("nvim-telescope/telescope.nvim")

	-- telescope extensions
	use("nvim-telescope/telescope-file-browser.nvim")

	-- Trouble LSP
	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({})
		end,
	})
end)

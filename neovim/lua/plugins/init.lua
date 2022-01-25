local packer = require("packer")
local use = packer.use

packer.startup(function()
	-- Packer manager
	use("wbthomason/packer.nvim")

	-- General purpose plugins
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")

	-- themes
	use("marko-cerovac/material.nvim")
	use("projekt0n/github-nvim-theme")

	-- icons suppors
	use({ "kyazdani42/nvim-web-devicons", opt = true })

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/highlight.lua")
	use("nvim-treesitter/playground")

	-- LSP utillity
	use("neovim/nvim-lspconfig")
	use("folke/trouble.nvim")
	use("williamboman/nvim-lsp-installer")
	use("jose-elias-alvarez/null-ls.nvim")

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
	use("nvim-telescope/telescope.nvim")
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
	-- sidebars is having conflig with autopairs
	use("NTBBloodbath/rest.nvim")
	use({
		"KadoBOT/nvim-spotify",
		requires = "nvim-telescope/telescope.nvim",
		config = function()
			local spotify = require("nvim-spotify")

			spotify.setup({
				-- default opts
				status = {
					update_interval = 10000, -- the interval (ms) to check for what's currently playing
					format = "%s %t by %a", -- spotify-tui --format argument
				},
			})
		end,
		run = "make",
	})

	-- File Tree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icon
		},
	})
	use("rinx/nvim-minimap")
end)

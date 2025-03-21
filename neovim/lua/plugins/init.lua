local packer = require("packer")
local use = packer.use

packer.startup(function()
	use("CopilotC-Nvim/CopilotChat.nvim", {
		requires = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		build = "make tiktoken", -- Only on MacOS or Linux
	})
	-- Color Schema
	use("ellisonleao/gruvbox.nvim")
	-- Packer manager
	use("wbthomason/packer.nvim")

	-- General purpose plugins
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-tree/nvim-web-devicons")
	use("MunifTanjim/nui.nvim")

	-- themes
	-- use("marko-cerovac/material.nvim")plugin
	use("projekt0n/github-nvim-theme")

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
	use({ "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig" })
	-- :MasonUpdate updates registry contents
	use({ "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" })
	use({
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").setup()
		end,
	})

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
	use({ "hrsh7th/cmp-nvim-lsp-signature-help" })

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- utillity plugins
	use("tpope/vim-commentary")
	use("tpope/vim-surround")

	-- telescope
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
	-- use("nvim-telescope/telescope-file-browser.nvim")

	-- Git integration
	use("lewis6991/gitsigns.nvim")
	use("sindrets/diffview.nvim")
	use("tpope/vim-fugitive")
	use({
		"ldelossa/gh.nvim",
		requires = { { "ldelossa/litee.nvim" } },
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})

	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end,
	})
	use("mbbill/undotree")
	use({
		"stevearc/dressing.nvim",
		config = function()
			require("dressing").setup()
		end,
	})

	-- -- DAP Plugins
	-- use("mfussenegger/nvim-dap")
	-- use("folke/neodev.nvim")
	-- use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	-- use("leoluz/nvim-dap-go")
	-- use("theHamsta/nvim-dap-virtual-text")
	-- use("nvim-telescope/telescope-dap.nvim")
	-- use("jay-babu/mason-nvim-dap.nvim")

	-- file explorer
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	})

	use({
		"antosha417/nvim-lsp-file-operations",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "kyazdani42/nvim-tree.lua" },
		},
	})
	use({
		"echasnovski/mini.nvim",
		config = function()
			require("mini.statusline").setup()
			require("mini.tabline").setup()
		end,
	})

	-- AI and ChatGPT
	-- use({ "github/copilot.vim" })

	-- Test utillity runner
	use({
		"klen/nvim-test",
		config = function()
			require("nvim-test").setup({})
		end,
	})
	use("simrat39/symbols-outline.nvim")

	-- use({ "ThePrimeagen/harpoon", requires = "nvim-lua/plenary.nvim" })

	-- JavaScript Packamanger Helpers
	use({
		"vuki656/package-info.nvim",
		requires = "MunifTanjim/nui.nvim",
	})

	-- golang helpers
	use("ray-x/go.nvim")
	use("ray-x/guihua.lua") -- recommended if need floating window support
	use("jose-elias-alvarez/null-ls.nvim")
	use("MunifTanjim/prettier.nvim")
end)

vim.cmd([[
    let g:minimap#default_auto_cmds_enabled = 1
    let g:minimap#highlight#group = 1
]])

require("symbols-outline").setup()
local prettier = require("prettier")

prettier.setup({
	bin = "prettier", -- or `'prettierd'` (v0.23.3+)
	filetypes = {
		"css",
		"graphql",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"less",
		"markdown",
		"scss",
		"typescript",
		"typescriptreact",
		"yaml",
	},
})

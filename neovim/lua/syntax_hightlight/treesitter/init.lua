local tree = require("nvim-treesitter.configs")

tree.setup({
    auto_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})


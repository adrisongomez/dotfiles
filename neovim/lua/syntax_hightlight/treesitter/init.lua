local tree = require("nvim-treesitter.configs")

tree.setup({
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})

-- vim.cmd([[
--     set foldmethod=expr
--     set foldexpr=nvim_treesitter#foldexpr()
-- ]])

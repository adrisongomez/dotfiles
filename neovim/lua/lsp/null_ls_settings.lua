local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	sources = {
		formatting.black,
		formatting.eslint,
		formatting.stylua,
        formatting.rubocop,
        formatting.prettier,
		diagnostics.eslint,
        diagnostics.pylint,
        diagnostics.luacheck,
        diagnostics.shellcheck,
        diagnostics.rubocop,
	},
})

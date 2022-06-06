local null_ls = require("null-ls")

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
        diagnostics.flake8,
		-- diagnostics.flake8.with({
		-- 	extra_args = { "--select=E9,F63,F7,F82", "--max-line-length=127", "--max-complexity=10", "--exit-zero" },
		-- }),
		diagnostics.luacheck,
		diagnostics.shellcheck,
		diagnostics.rubocop,
	},
})

require("formatter").setup({
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		python = {
			require("formatter.filetypes.python").black,
		},
		javascript = {
			require("formatter.filetypes.javascript").eslint_d,
			require("formatter.filetypes.javascript").prettier,
		},
		javascriptreact = {
			require("formatter.filetypes.javascriptreact").eslint_d,
			require("formatter.filetypes.javascriptreact").prettier,
		},
		typescript = {
			require("formatter.filetypes.typescript").eslint_d,
			require("formatter.filetypes.typescript").prettier,
		},
		typescriptreact = {
			require("formatter.filetypes.typescriptreact").eslint_d,
			require("formatter.filetypes.typescriptreact").prettier,
		},
		json = {
			require("formatter.filetypes.json").fixjson,
		},
	},
})

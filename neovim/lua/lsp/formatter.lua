require("formatter").setup({
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		python = {
			require("formatter.filetypes.python").black,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
			require("formatter.filetypes.javascriptreact").eslint_d,
		},
		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettier,
			require("formatter.filetypes.javascriptreact").eslint_d,
		},
		typescript = {
			require("formatter.filetypes.typescript").prettier,
			require("formatter.filetypes.javascriptreact").eslint_d,
		},
		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettier,
			require("formatter.filetypes.javascriptreact").eslint_d,
		},
		json = {
			require("formatter.filetypes.json").fixjson,
		},
		yaml = {
			require("formatter.filetypes.yaml").pyaml,
		},
		go = {
			require("formatter.filetypes.go").gofmt,
		},
		grqphql = {
			require("formatter.filetypes.graphql").prettier,
		},
		css = {
			require("formatter.filetypes.css").eslint_d,
			require("formatter.filetypes.css").prettier,
		},
		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},
	},
})

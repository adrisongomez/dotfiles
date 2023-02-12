local installer = require("nvim-lsp-installer")
local lspconfig = require("lspconfig")
local common = require("lsp.commons")

installer.setup({})

for _, server in ipairs(installer.get_installed_servers()) do
	local opts = {
		on_attach = common.on_attach,
		capabilities = common.capabilities,
	}

	if server.name == "sumneko_lua" then
		opts = vim.tbl_deep_extend("force", opts, require("lsp.settings.sumneko_lua"))
	end

	if server.name == "pyright" then
		opts = vim.tbl_deep_extend("force", opts, require("lsp.settings.pyright"))
	end

	if server.name == "tsserver" then
		opts = vim.tbl_deep_extend("force", opts, require("lsp.settings.tsserver"))
	end

	lspconfig[server.name].setup(opts)
end

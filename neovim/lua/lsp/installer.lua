local mason = require("mason")
local masonConfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local common = require("lsp.commons")


mason.setup()
masonConfig.setup()

masonConfig.setup_handlers{
    function (server_name)
        lspconfig[server_name].setup{
            on_attach = common.on_attach,
        }
    end
}

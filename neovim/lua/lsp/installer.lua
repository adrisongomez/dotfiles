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
            capabilities = common.capabilities,
        }
    end,
    ["tsserver"] = function ()
        local opts = {
            on_attach = common.on_attach,
            capabilities = common.capabilities,
        }
        lspconfig.tsserver.setup( vim.tbl_deep_extend("force", opts, require("lsp.settings.tsserver")))
    end,
}

local installer = require "nvim-lsp-installer"
local common = require "lsp.commons"

installer.on_server_ready(function(server)
    local opts = {
        on_attach = common.on_attach,
        capabilities = common.capabilities
    }

    if server.name == "sumneko_lua" then
        opts = vim.tbl_deep_extend("force", opts, require("lsp.settings.sumneko_lua"))
    end

    if server.name == "pyright" then
        opts = vim.tbl_deep_extend("force", opts, require("lsp.settings.pyright"))
    end

    server:setup(opts)
end)

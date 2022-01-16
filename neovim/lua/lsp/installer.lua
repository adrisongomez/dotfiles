local installer = require "nvim-lsp-installer"
local common = require "lsp.commons"

installer.on_server_ready(function(server)
    local opts = {
        on_attach = common.on_attach
    }

    if server.name == "sumneko_lua" then
        opts = vim.tbl_extend("force", opts, require("lsp.settings.sumneko_lua"))
    elseif server.name == "pyright" then
        opts = vim.tbl_extend("force", opts, require("lsp.settings.pyright"))
    end

    opts.capabilities = common.capabilities

    server:setup(opts)
end)

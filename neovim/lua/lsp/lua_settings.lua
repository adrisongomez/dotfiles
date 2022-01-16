local lsp = require("lspconfig")
local language_server_name = "sumneko_lua"
local keybind = require("lsp.keybindings")
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

lsp[language_server_name].setup {
    settings = {
        on_attach = keybind.on_attach,
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = runtime_path
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true)
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false
            }
        }
    },
    cmd = {"lua-language-server"},
    filetypes = {"lua"},
    log_level = 2,
    single_file_support = true
}


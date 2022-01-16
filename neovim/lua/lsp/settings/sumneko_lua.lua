local M = {}
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

M.settings = {
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
}

M.cmd = {"lua-language-server"}

M.filetypes = {"lua"}

M.log_level = 2

M.single_file_support = true

return M

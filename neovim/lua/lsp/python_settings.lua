local lsp = require('lspconfig')
local kb = require('lsp.keybindings')
local lsp_server_name = "pyright"

lsp[lsp_server_name].setup({
    on_attach = kb.on_attach,
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
--[[    root_dir = function(startpath)
        return M.search_ancestors(startpath, matcher)
      end,
]]
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = "workspace",
          useLibraryCodeForTypes = true
        }
      }
    },
    single_file_support = true
})

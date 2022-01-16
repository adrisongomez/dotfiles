local M = {}

M.cmd = { "pyright-langserver", "--stdio" }

M.filetypes = { "python" }

M.settings = {
  python = {
    analysis = {
      autoSearchPaths = true,
      diagnosticMode = "workspace",
      useLibraryCodeForTypes = true
    }
  }
}

M.single_file_support = true

return M

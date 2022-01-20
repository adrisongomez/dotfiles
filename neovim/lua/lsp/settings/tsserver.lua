local M = {}

M.cmd = { "typescript-language-server", "--stdio" }

M.filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }

M.init_options = {
  hostInfo = "neovim"
}

return M

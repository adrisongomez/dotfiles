require('lsp.python_lsp')
require('lsp.autocomplete')

vim.cmd"autocmd FileType python lua require('lsp.python_lsp')"

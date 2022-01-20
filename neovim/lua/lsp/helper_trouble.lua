local map = require "global.functions".map

map("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
map("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
    {silent = true, noremap = true}
)
map("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
    {silent = true, noremap = true}
)
map("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
    {silent = true, noremap = true}
)
map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
    {silent = true, noremap = true}
)
map("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)

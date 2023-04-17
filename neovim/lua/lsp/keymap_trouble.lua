local map = require("global.functions").map

map("n", "<Leader>tt", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
map("n", "<Leader>tw", "<cmd>Trouble workspace_diagnostics<cr>", { silent = true, noremap = true })
map("n", "<Leader>td", "<cmd>Trouble document_diagnostics<cr>", { silent = true, noremap = true })
map("n", "<Leader>tl", "<cmd>Trouble loclist<cr>", { silent = true, noremap = true })
map("n", "<Leader>tq", "<cmd>Trouble quickfix<cr>", { silent = true, noremap = true })
-- map("n", "gR", "<cmd>Trouble lsp_references<cr>", { silent = true, noremap = true })

local map = require("global.functions").map

-- Git-fugitive
map("n", "<leader>gg", ":Git<CR>")
map("n", "<leader>gpp", ":Git push<CR>")
map("n", "<leader>gpf", ":Git push --force-with-lease<CR>")
map("n", "<leader>gss", ":Git stash<CR>")
map("n", "<leader>gsp", ":Git stash pop<CR>")
map("n", "<leader>gb", ":Gitsigns blame_line<CR>")
map("n", "<leader>gpl", ":Git pull<CR>")
map("n", "<leader>gcc", ":Git commit -a<CR>")
map("n", "<leader>gca", ":Git commit -a --amend --no-edit<CR>")

-- Octo GitHub
-- map("n", "<leader>ghpc", ":Octo pr create<CR>")

-- GitHub CLI
map("n", "<leader>ghpw", ":! gh pr view -w<CR>")

-- NEOVIM-DAP

map("n", "<leader>jdt", ":lua require'dap'.toggle_breakpoint()")
map("n", "<leader>jdr", ":lua require'dap'.continue()")
map("n", "<leader>sto", ":lua require'dap'.step_over()")
map("n", "<leader>sti", ":lua require'dap'.step_into()")
map("n", "<leader>inr", ":lua require'dap'.repl.open()")


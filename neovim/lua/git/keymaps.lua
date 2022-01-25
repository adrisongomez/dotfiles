local map = require("global.functions").map

-- Git-fugitive
map('n', '<leader>gg', ':Git<CR>')
map('n', '<leader>gp', ':Git push<CR>')
map('n', '<leader>gf', ':Git push --force-with-lease<CR>')
map('n', '<leader>gs', ':Git stash<CR>')
map('n', '<leader>gb', ':Gitsigns blame_line')
map('n', '<leader>gl', ':Git pull --rebase origin master')


-- Octo GitHub
map('n', '<leader>ghpc', ':Octo pr create<CR>')

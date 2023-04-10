-- require("harpoon").setup()
-- local harpoonUI = require("harpoon.ui")
-- local harpoonMark = require("harpoon.mark")
-- local utils = require("global.functions")

-- utils.map('n', '<leader>m', harpoonMark.add_file())
-- utils.map('n', '<leader>gm', harpoonUI.toggle_quick_menu())
--
vim.keymap.set("n", "<leader>mf", ":lua require'harpoon.mark'.add_file()<CR>")
vim.keymap.set("n", "<leader>hf", ":lua require'harpoon.ui'.toggle_quick_menu()<CR>")


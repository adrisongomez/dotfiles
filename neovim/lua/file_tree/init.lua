local map = require("global.functions").map

local M = {}

M.open_file_browser = function()
	require("nvim-tree.api").tree.toggle({ find_file = true, update_root = true, focus = true })
end

M.open_file_browser_focus = function()
	local p = vim.fn.expand("%:p:h")
	require("nvim-tree.api").tree.toggle({ find_file = true, path = p, focus = true })
end

M.setup = function()
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1
	vim.opt.termguicolors = true
	require("nvim-tree").setup()
	require("lsp-file-operations").setup()
	map("n", "<Leader>fd", ":lua require('file_tree').open_file_browser()<CR>")
	map("n", "<Leader>fD", ":lua require('file_tree').open_file_browser_focus()<CR>")
end

return M

--[[
	This file define all the custom keymaps for the telescope file finder.

	These are the suggested keymaps in the telescope.nvim documentation:

	- nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
	- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
	- nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
	- nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]]

-- find files in the current project open

local map = require("global.functions").map
local calling_telescope = 'require("telescope.builtin")'

local function create_keymap(mod, keymap, fn)
	map(mod, keymap, ":lua " .. calling_telescope .. "." .. fn .. "()<CR>")
end

create_keymap("n", "<Leader>ff", "find_files")
create_keymap("n", "<Leader>fg", "live_grep")
create_keymap("n", "<Leader>fb", "buffers")
create_keymap("n", "<Leader>fh", "help_tags")

map("n", "<Leader>fd", ":lua require('custom_finders.telescope.keymaps').open_file_browser()<CR>")
map("n", "<Leader>fD", ":lua require('custom_finders.telescope.keymaps').open_file_browser_focus()<CR>")

local M = {}

M.open_file_browser = function()
	require("nvim-tree.api").tree.toggle({ find_file = true, update_root= true, focus = true })
end

M.open_file_browser_focus = function()
	local p = vim.fn.expand("%:p:h")
	require("nvim-tree.api").tree.toggle({ find_file = true, path=p, focus = true })
end

return M

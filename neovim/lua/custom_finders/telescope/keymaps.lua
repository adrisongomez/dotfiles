local map = require("global.functions").map
local calling_telescope = 'require("telescope.builtin")'

local function create_keymap(mod, keymap, fn)
	map(mod, keymap, ":lua " .. calling_telescope .. "." .. fn .. "()<CR>")
end

create_keymap("n", "<Leader>ff", "find_files")
create_keymap("n", "<Leader>fg", "live_grep")
create_keymap("n", "<Leader>fb", "buffers")
create_keymap("n", "<Leader>fh", "help_tags")

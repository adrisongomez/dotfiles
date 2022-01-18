local M = {}
local Job = require("plenary.job")

function RefreshConfig ()
    Job:new({
      command = 'bash',
      args = { 'install.sh' },
      cwd = '~/dotfiles/neovim',
      on_exit = function(j, return_val)
          print(j, return_val)
      end,
    }):sync()
    vim.cmd"luafile $MYVIMRC"
end

M.map = function(mod, keymap, rhs, opts)
    local options = {
        noremap = true,
        silent = true
    }

    if opts ~= nil then
        options = vim.tbl_extend("force", options, opts)
    end

    vim.api.nvim_set_keymap(mod, keymap, rhs, options)
end

return M

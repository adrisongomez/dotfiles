return {
    map = function(mod, keymap, rhs, opts)
        local options = {
            noremap = true,
            silent = true
        }

        if opts ~= nil then
		options = vim.tbl_extend("force", options, opts)
	end

        vim.api.nvim_set_keymap(mod, keymap, rhs, options)
    end
}

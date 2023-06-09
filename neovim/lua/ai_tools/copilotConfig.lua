vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<leader>ca", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.keymap.set("n", "<leader>co", ":Copilot panel<CR>")

-- vim.cmd[[
--     imap <silent><script><expr> <C-F> copilot#Accept("\<CR>")
--     let g:copilot_no_tab_map = v:true
--     highlight CopilotSuggestion guifg=#555555 ctermfg=8
-- ]]

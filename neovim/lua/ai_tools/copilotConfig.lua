vim.keymap.set("n", "<leader>cp", ":Copilot panel<CR>")
vim.cmd[[
    imap <silent><script><expr> <C-F> copilot#Accept("\<CR>")
    let g:copilot_no_tab_map = v:true
    highlight CopilotSuggestion guifg=#555555 ctermfg=8
]]

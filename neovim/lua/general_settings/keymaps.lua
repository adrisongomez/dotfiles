local map = require("global.functions").map

-- window movements
map("n", "<leader>l", "<c-w>l")
map("n", "<leader>h", "<c-w>h")
map("n", "<leader>k", "<c-w>k")
map("n", "<leader>j", "<c-w>j")
map("n", "<leader>ws", "<c-w>s")
map("n", "<leader>wv", "<c-w>v")

--yank rest
map("n", "Y", "y$")

-- keeping in the center
map("n", "n", "nzzzv")
map("n", "J", "mzJ`z")

-- undo breakpoints
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")

-- Moving text
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "J", ":m '>+1<CR>gv=gv")

--[[
    nnoremap <A-j> :m .+1<CR>==
    nnoremap <A-k> :m .-2<CR>==
    inoremap <A-j> <Esc>:m .+1<CR>==gi
    inoremap <A-k> <Esc>:m .-2<CR>==gi
    vnoremap <A-j> :m '>+1<CR>gv=gv
    vnoremap <A-k> :m '<-2<CR>gv=gv
]]

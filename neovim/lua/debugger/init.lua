vim.keymap.set("n", "<leader>dd", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>dk", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>dj", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>do", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>dB", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>dL", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dc", ":lua require'dap'.repl.open()<CR>")
vim.keymap.set("n", "<leader>ds", ":lua require('dapui').toggle()<CR>")

require("mason-nvim-dap").setup({
	automatic_installation = true,
})

require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})

require("dapui").setup()

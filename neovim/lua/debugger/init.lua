vim.keymap.set("n", "<leader>dd", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>dk", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>dj", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>do", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>dB", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>dL", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dc", ":lua require'dap'.repl.open()<CR>")
vim.keymap.set("n", "<leader>ds", ":lua require('dapui').toggle()<CR>")

require("dap-vscode-js").setup({
  -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  debugger_path = "~/js-debug/", -- Path to vscode-js-debug installation.
  debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
  adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
  -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
  -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
  -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
})

require("mason-nvim-dap").setup({
	ensure_installed = {},
	automatic_installation = false,
	handlers = {
		function(config)
			require("mason-nvim-dap").default_setup(config)
		end,
	},
})

---@diagnostic disable-next-line: missing-fields
require("neodev").setup({
	debug = false,
	lspconfig = true,
	library = { plugins = { "nvim-dap-ui" }, types = true },
})

require("dapui").setup()

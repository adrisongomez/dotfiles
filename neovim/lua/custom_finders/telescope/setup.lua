require("telescope").setup({
	extensions = {
		file_browser = {
			theme = "ivy",
		},
	},
})

require("telescope").load_extension("package_info")

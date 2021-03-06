-- setting the color scheme
vim.opt.background = "dark"
-- vim.g.colors_name = 'theme'
--
-- vim.g.material_style = "deep ocean"

vim.cmd([[
    " colorscheme material 
]])

-- default on https://github.com/projekt0n/github-nvim-theme
require("github-theme").setup({
  theme_style = "dark",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})


-- require("material").setup({
-- 	contrast = {
-- 		sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
-- 		floating_windows = true, -- Enable contrast for floating windows
-- 		line_numbers = true, -- Enable contrast background for line numbers
-- 		sign_column = true, -- Enable contrast background for the sign column
-- 		cursor_line = false, -- Enable darker background for the cursor line
-- 		non_current_windows = false, -- Enable darker background for non-current windows
-- 		popup_menu = true, -- Enable lighter background for the popup menu
-- 	},

-- 	italics = {
-- 		comments = true, -- Enable italic comments
-- 		keywords = true, -- Enable italic keywords
-- 		functions = false, -- Enable italic functions
-- 		strings = false, -- Enable italic strings
-- 		variables = false, -- Enable italic variables
-- 	},

-- 	contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
-- 		"terminal", -- Darker terminal background
-- 		"packer", -- Darker packer background
-- 		"qf", -- Darker qf list background
-- 	},

-- 	high_visibility = {
-- 		lighter = false, -- Enable higher contrast text for lighter style
-- 		darker = true, -- Enable higher contrast text for darker style
-- 	},

-- 	disable = {
-- 		borders = false, -- Disable borders between verticaly split windows
-- 		background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
-- 		term_colors = false, -- Prevent the theme from setting terminal colors
-- 		eob_lines = false, -- Hide the end-of-buffer lines
-- 	},
-- })

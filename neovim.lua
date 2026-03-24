return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
				-- Background colors
				bg = "#0B0C0C",
				bg_dark = "#0B0C0C",
				bg_highlight = "#00A19C",

				-- Foreground colors
				-- fg: Object properties, builtin types, builtin variables, member access, default text
				fg = "#CAC8C4",
				-- fg_dark: Inactive elements, statusline, secondary text
				fg_dark = "#434549",
				-- comment: Line highlight, gutter elements, disabled states
				comment = "#6E6A64",

				-- Accent colors
				-- red: Errors, diagnostics, tags, deletions, breakpoints
				red = "#f24331",
				-- orange: Constants, numbers, current line number, git modifications
				orange = "#bf3c7c",
				-- yellow: Types, classes, constructors, warnings, numbers, booleans
				yellow = "#ed9a1d",
				-- green: Comments, strings, success states, git additions
				green = "#ff631c",
				-- cyan: Parameters, regex, preprocessor, hints, properties
				cyan = "#d4c783",
				-- blue: Functions, keywords, directories, links, info diagnostics
				blue = "#666a6d",
				-- purple: Storage keywords, special keywords, identifiers, namespaces
				purple = "#aaa8a4",
				-- magenta: Function declarations, exception handling, tags
				magenta = "#EBD698",
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")

			-- Enable hot reload
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
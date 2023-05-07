require("telescope").load_extension("flutter")
require("flutter-tools").setup {
	debugger = {
		enabled = true,
		run_via_dap = false
	},
	widget_guides = {
		enabled = true,
	},
	lsp = {
		color = {
			enabled = true
		}
	}
}

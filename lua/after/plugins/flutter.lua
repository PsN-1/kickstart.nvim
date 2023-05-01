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
		on_attach = on_attach,
		capabilities = capabilities,
		color = {
			enabled = true
		}
	}
}

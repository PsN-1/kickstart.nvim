return {
    { 'akinsho/flutter-tools.nvim', 
    dependencies = {'nvim-lua/plenary.nvim'}, 
    lazy = false,
    config = function ()
        require("telescope").load_extension("flutter")
        require("flutter-tools").setup {
            widget_guides = {
                enabled = true,
            },
            lsp = {
                on_attach = on_attach,
                capabilities = capabilities,
            }
        }
    end
    },
}
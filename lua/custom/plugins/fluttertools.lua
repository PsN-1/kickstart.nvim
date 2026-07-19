return {
  {
    'akinsho/flutter-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',
    },
    config = function()
      require('telescope').load_extension 'flutter'
      require('flutter-tools').setup {
        debugger = {
          enabled = false,
          run_via_dap = false,
        },
        widget_guides = {
          enabled = true,
        },
        lsp = {
          color = {
            enabled = true,
          },
        },
      }
    end,
  },
}

return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    notify_on_error = false,
    default_format_opts = {
      async = true,
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
    format_after_save = {
      async = true,
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
    formatters_by_ft = {
      javascript = { 'prettierd', 'prettier ' },
      typescript = { 'prettierd', 'prettier ' },
      typescriptreact = { 'prettierd', 'prettier ' },
      svelte = { 'prettierd', 'prettier ' },
      lua = { 'stylua' },
    },
    formatters = {
      my_formatter = {
        prepend_args = { '--use-spaces' },
      },
    },
  },
}

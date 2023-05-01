-- local null_ls = require('null-ls')
--
-- null_ls.setup({
-- 	on_attach = on_attach,
-- 	capabilities = capabilities,
-- 	sources = {
-- 		-- null_ls.builtins.formatting.prettierd,
-- 		-- null_ls.builtins.diagnostics.eslint_d.with({
-- 		-- 	diagnostics_format = '[eslint] #{m}\n(#{c})'
-- 		-- }),
-- 	}
-- })

require('lspconfig').tsserver.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	filttetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascript.js", "javascriptreact", "javascript.jsx" },
	cmd = { "typescript-language-server", "--stdio" }
}

local on_attach = function(client, bufnr)
	-- format on save
	-- if client.server_capabilities.documentFormattingProvider then
	-- 	vim.api.nvim_create_autocmd("BufWritePre", {
	-- 		group = vim.api.nvim_create_augroup("Format", { clear = true }),
	-- 		buffer = bufnr,
	-- 		callback = function() vim.lsp.buf.formatting_seq_sync() end
	-- 	})
	-- end
end

require('lspconfig').tsserver.setup {
	on_attach = on_attach,
	filttetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascript.js", "javascriptreact",
		"javascript.jsx" },
	cmd = { "typescript-language-server", "--stdio" }
}

local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
	vim.lsp.buf.format({
		filter = function(client)
			return client.name == "null-ls"
		end,
		bufnr = bufnr,
	})
end

null_ls.setup {
	sources = {
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.diagnostics.eslint_d.with({
			diagnostics_format = '[eslint] #{m}\n(#{c})'
		}),
		-- null_ls.builtins.diagnostics.fish
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					lsp_formatting(bufnr)
				end,
			})
		end
	end
}

vim.api.nvim_create_user_command(
	'DisableLspFormatting',
	function()
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
	end,
	{ nargs = 0 }
)

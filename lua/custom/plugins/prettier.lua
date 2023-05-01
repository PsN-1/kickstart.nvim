return {
    'MunifTanjim/prettier.nvim',
    config = function()
        require('prettier').setup {
            bin = 'prettier',
            filetypes = {
                "css",
                "javascript",
                "javascriptreact",
                "typescript",
                "typescriptreact",
                "json",
                "scss",
                "less",
                "py",
                "python",
                "dart"
            }
        }
    end
}


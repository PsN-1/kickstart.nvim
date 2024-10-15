return {
    'onsails/lspkind-nvim',
    'preservim/nerdtree',
    'prisma/vim-prisma',
    "iamcco/markdown-preview.nvim",
    'vuhrmeister/vscode-meteor',
    event = "BufRead",
    build = function()
        vim.fn["mkdp#util#install"]()
    end,
}

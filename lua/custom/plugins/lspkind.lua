return {
  'onsails/lspkind-nvim',
  'preservim/nerdtree',
  'prisma/vim-prisma',
  'vuhrmeister/vscode-meteor',
  {
    'iamcco/markdown-preview.nvim',
    event = 'BufRead',
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },
}

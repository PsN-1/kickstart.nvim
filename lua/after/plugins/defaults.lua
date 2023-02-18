
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.scrolloff = 8

-- I think this is the treeside stuff
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 30
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1

vim.o.incsearch = true


vim.keymap.set('n', '<leader>gs', require('telescope.builtin').git_status, { desc = '[G]it [S]tatus' })

vim.keymap.set('n', '<leader>gd', '<Cmd>Gvdiffsplit<CR>', { desc = '[G]it [D]iff (vertical split)' })

vim.keymap.set('n', '<leader>p', '<Cmd>Prettier<CR>')
vim.keymap.set('n', '<leader>v', vim.cmd.Lex)

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

vim.keymap.set('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', {})
vim.keymap.set('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', {})
vim.keymap.set('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', {})
vim.keymap.set('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', {})
vim.keymap.set('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', {})
vim.keymap.set('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>', {})


-- Allow to move select text up and down
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")

-- Maintain the cursor at the center of screen while half-page scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')


-- Maintain the cursor at the center while searching
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Copy to the system clipboard
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

vim.keymap.set('n', '<leader>d', "\"_d")
vim.keymap.set('v', '<leader>d', "\"_d")

vim.keymap.set('n', '<leader>fc', require('telescope').extensions.flutter.commands, { desc = '[F]lutter [C]ommands' })
vim.keymap.set('n', '<leader>fo', '<Cmd>FlutterOutlineToggle<CR>', {})

require("remap")
require("config.lazy")
vim.lsp.enable('pyright')
vim.opt.termguicolors = true
vim.wo.relativenumber = true
vim.wo.number = true
vim.o.undofile = true
vim.o.scrolloff = 10
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
vim.opt.conceallevel = 1
vim.keymap.set('n', '<leader>pfg', function()
  require('fzf-lua').live_grep()
end, { desc = 'Live Grep with fzf-lua' })
vim.keymap.set('n', '<leader>q','<cmd>Dashboard<CR>')


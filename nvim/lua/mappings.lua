local map = vim.keymap.set

-- disable space doing stuff in normal mode
map('n', '<space>', '')

-- trying to minimize use of remaps
--[[
-- move line or visually selected block - alt+j/k
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi')
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi')
map('v', '<A-j>', ':m '>+1<CR>gv=gv')
map('v', '<A-k>', ':m '<-2<CR>gv=gv')
-- move split panes to left/bottom/top/right
map('n', '<A-h>', '<C-W>H')
map('n', '<A-j>', '<C-W>J')
map('n', '<A-k>', '<C-W>K')
map('n', '<A-l>', '<C-W>L')
-- move between panes to left/bottom/top/right
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
]]

-- Find files using Telescope command-line sugar.
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')

-- open netrw
map('n', '<leader>pv', '<cmd>Ex<cr>')


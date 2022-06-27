-- options
vim.opt.exrc = true
vim.opt.showmatch = true              -- show matching 
vim.opt.ignorecase = true              -- case insensitive 
vim.opt.smartcase = true
vim.opt.hlsearch = false               -- highlight search 
vim.opt.incsearch = true               -- incremental search
vim.opt.tabstop = 4               -- number of columns occupied by a tab 
vim.opt.softtabstop = 4           -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.expandtab = true               -- converts tabs to white space
vim.opt.shiftwidth = 4            -- width for autoindents
vim.opt.autoindent = true              -- indent a new line the same amount as the line just typed
vim.opt.smartindent = true
vim.opt.number = true                  -- add line numbers
-- vim.opt.wildmode = longest,list   -- get bash-like tab completions
vim.opt.colorcolumn = "80"                  -- set an 80 column border for good coding style
--filetype plugin indent on   --allow auto-indenting depending on file type, apparently enabled by default
vim.opt.mouse = "a"                 -- enable mouse click
vim.opt.clipboard=unnamedplus   -- using system clipboard
-- filetype plugin on
vim.opt.cursorline = true              -- highlight current cursorline
vim.opt.ttyfast = true                 -- Speed up scrolling in Vim
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.wrap = true
--vim.opt.noswapfile
--vim.opt.nobackup
--vim.opt.undodir=~/.vim/undodir
--vim.opt.undofile
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
-- vim.opt.noswapfile            -- disable creating swap file
-- vim.opt.backupdir=~/.cache/vim -- Directory to store backup files.
vim.opt.background = "dark" -- for the dark version
-- open new split panes to right and below
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.termguicolors = true


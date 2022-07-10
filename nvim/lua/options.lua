-- options
vim.opt.exrc = true
vim.opt.showmatch = true              -- show matching 
vim.opt.ignorecase = true              -- case insensitive 
vim.opt.smartcase = true
vim.opt.hlsearch = false               -- highlight search 
vim.opt.tabstop = 4               -- number of columns occupied by a tab 
vim.opt.softtabstop = 4           -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.expandtab = true               -- converts tabs to white space
vim.opt.shiftwidth = 4            -- width for autoindents
vim.opt.smartindent = true
vim.opt.number = true                  -- add line numbers
-- vim.opt.wildmode = longest,list   -- get bash-like tab completions
vim.opt.colorcolumn = '80'                  -- set an 80 column border for good coding style
--filetype plugin indent on   --allow auto-indenting depending on file type, apparently enabled by default
vim.opt.mouse = 'a'                 -- enable mouse click
vim.opt.clipboard = 'unnamedplus'   -- using system clipboard
-- filetype plugin on
vim.opt.cursorline = true              -- highlight current cursorline
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
vim.opt.signcolumn = 'yes'
-- vim.opt.noswapfile            -- disable creating swap file
-- vim.opt.backupdir=~/.cache/vim -- Directory to store backup files.
-- open new split panes to right and below
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.termguicolors = true
vim.o.background = 'dark'


--[[
Defaults					            *nvim-defaults*

- Filetype detection is enabled by default. This can be disabled by adding
  ":filetype off" to |init.vim|.
- Syntax highlighting is enabled by default. This can be disabled by adding
  ":syntax off" to |init.vim|.

- 'autoindent' is enabled
- 'autoread' is enabled
- 'background' defaults to "dark" (unless set automatically by the terminal/UI)
- 'backspace' defaults to "indent,eol,start"
- 'backupdir' defaults to .,~/.local/share/nvim/backup// (|xdg|), auto-created
- 'belloff' defaults to "all"
- 'compatible' is always disabled
- 'complete' excludes "i"
- 'cscopeverbose' is enabled
- 'directory' defaults to ~/.local/share/nvim/swap// (|xdg|), auto-created
- 'display' defaults to "lastline,msgsep"
- 'encoding' is UTF-8 (cf. 'fileencoding' for file-content encoding)
- 'fillchars' defaults (in effect) to "vert:│,fold:·,sep:│"
- 'formatoptions' defaults to "tcqj"
- 'fsync' is disabled
- 'hidden' is enabled
- 'history' defaults to 10000 (the maximum)
- 'hlsearch' is enabled
- 'incsearch' is enabled
- 'joinspaces' is disabled
- 'langnoremap' is enabled
- 'langremap' is disabled
- 'laststatus' defaults to 2 (statusline is always shown)
- 'listchars' defaults to "tab:> ,trail:-,nbsp:+"
- 'nrformats' defaults to "bin,hex"
- 'ruler' is enabled
- 'sessionoptions' includes "unix,slash", excludes "options"
- 'shortmess' includes "F", excludes "S"
- 'showcmd' is enabled
- 'sidescroll' defaults to 1
- 'smarttab' is enabled
- 'startofline' is disabled
- 'switchbuf' defaults to "uselast"
- 'tabpagemax' defaults to 50
- 'tags' defaults to "./tags;,tags"
- 'ttimeoutlen' defaults to 50
- 'ttyfast' is always set
- 'undodir' defaults to ~/.local/share/nvim/undo// (|xdg|), auto-created
- 'viewoptions' includes "unix,slash", excludes "options"
- 'viminfo' includes "!"
- 'wildmenu' is enabled
- 'wildoptions' defaults to "pum,tagfile"

- |man.vim| plugin is enabled, so |:Man| is available by default.
- |matchit| plugin is enabled. To disable it in your config: >
    :let loaded_matchit = 1

- |g:vimsyn_embed| defaults to "l" to enable Lua highlighting
]]

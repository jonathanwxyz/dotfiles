-- maps leader to space
vim.g.mapleader = " "

require "options"
require "mappings"
require "plugins"

vim.cmd [[
    " syntax highlighting
    syntax on
	syntax enable
	colorscheme one 

    " Vim jump to the last position when reopening a file
	if has("autocmd")
	  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
	    \| exe "normal! g'\"" | endif
	endif
]]

require "jonathan"

-- maps leader to space
vim.g.mapleader = ' '

require 'options'
require 'mappings'
require 'plugins'
require 'autocmds'

vim.cmd [[
    syntax on
	syntax enable
	colorscheme one 
]]

require 'jonathan'

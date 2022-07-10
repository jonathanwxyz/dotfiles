local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- plenary
    use 'nvim-lua/plenary.nvim'
    -- telescope
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
    -- lsp
    use 'neovim/nvim-lspconfig'
    -- treesitterSource Code Pro
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    -- cmp autocomplete
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    -- cmp pictogram in autocomplete
    use 'onsails/lspkind.nvim'
    -- harpoon
    use 'ThePrimeagen/harpoon'
    -- For luasnip users.
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    -- commenting helper
    use 'numToStr/Comment.nvim'
    -- premade snippets
    use 'rafamadriz/friendly-snippets'
    -- theming
    use 'folke/tokyonight.nvim'
    use {
      "olimorris/onedarkpro.nvim",
      --[[ config = function()
        require("onedarkpro").setup()
        require("onedarkpro").load()
      end ]]
    }
    use 'navarasu/onedark.nvim'
    use 'nvim-lualine/lualine.nvim'
    -- devicons
    use 'ryanoasis/vim-devicons'

    if packer_bootstrap then
      require('packer').sync()
    end
end)

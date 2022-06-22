require("harpoon")
local nnoremap  = require("utils").nnoremap
local silent = { silent = true }
nnoremap("<leader>a", function() require('harpoon.mark').add_file() end, silent)
nnoremap("<C-e>", function() require('harpoon.ui').toggle_quick_menu() end, silent)
nnoremap("<leader>tc", function() require('harpoon.cmd-ui').toggle_quick_menu() end, silent)
nnoremap("<C-j>", function() require('harpoon.ui').nav_file(1) end, silent)
nnoremap("<C-k>", function() require('harpoon.ui').nav_file(2) end, silent)
nnoremap("<C-l>", function() require('harpoon.ui').nav_file(3) end, silent)
nnoremap("<C-;>", function() require('harpoon.ui').nav_file(4) end, silent)

require("harpoon").setup({
    global_settings = {
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = false,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = false,

    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
    tmux_autoclose_windows = false,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { "harpoon" },

    -- set marks specific to each git branch inside git repository
    mark_branch = false,
}
})

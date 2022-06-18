require("harpoon")
local map = require("utils").map
map("n", "<leader>a", ":lua require('harpoon.mark').add_file()<CR>", {silent = true})
map("n", "<C-e>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", {silent = true})
map("n", "<leader>tc", ":lua require('harpoon.cmd-ui').toggle_quick_menu()<CR>", {silent = true})
map("n", "<C-h>", ":lua require('harpoon.ui').nav_file(1)<CR>", {silent = true})
map("n", "<C-t>", ":lua require('harpoon.ui').nav_file(2)<CR>", {silent = true})
map("n", "<C-n>", ":lua require('harpoon.ui').nav_file(3)<CR>", {silent = true})
map("n", "<C-s>", ":lua require('harpoon.ui').nav_file(4)<CR>", {silent = true})

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

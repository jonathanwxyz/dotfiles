local ls = require 'luasnip'
require("luasnip.loaders.from_vscode").lazy_load()

-- this will expand the current item or jump to the next item within the snippet.
vim.keymap.set({ "i", "s" }, "<A-k>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

-- this always moves to the previous item within the snippet
vim.keymap.set({ "i", "s" }, "<A-j>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

-- this is useful for choice nodes
vim.keymap.set("i", "<A-l>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

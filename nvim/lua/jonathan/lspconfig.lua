-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local map = vim.keymap.set
local silent = { silent=true }
map('n', '<space>e', function() vim.diagnostic.open_float() end, silent)
map('n', '[d', function() vim.diagnostic.goto_prev() end, silent)
map('n', ']d', function() vim.diagnostic.goto_next() end, silent)
map('n', '<space>q', function() vim.diagnostic.setloclist() end, silent)

local function config(_config)
    return vim.tbl_deep_extend("force", {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    -- Use an on_attach function to only map the following keys
    -- after the language server attaches to the current buffer
    on_attach = function(client, bufnr)
      -- Enable completion triggered by <c-x><c-o>
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

      local opts = { buffer=bufnr, silent=true }
      -- Mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      map('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
      map('n', 'gd', function() vim.lsp.buf.definition() end, opts)
      map('n', 'K', function() vim.lsp.buf.hover() end, opts)
      map('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
      map('n', '<C-k>', function() vim.lsp.buf.signature_help() end, opts)
      map('n', '<space>wa', function() vim.lsp.buf.add_workspace_folder() end, opts)
      map('n', '<space>wr', function() vim.lsp.buf.remove_workspace_folder() end, opts)
      map('n', '<space>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts)
      map('n', '<space>D', function() vim.lsp.buf.type_definition() end, opts)
      map('n', '<space>rn', function() vim.lsp.buf.rename() end, opts)
      map('n', '<space>ca', function() vim.lsp.buf.code_action() end, opts)
      map('n', 'gr', function() vim.lsp.buf.references() end, opts)
      map('n', '<space>f', function() vim.lsp.buf.formatting() end, opts)
    end,
    }, _config or {})
end

require('lspconfig').gopls.setup(config({
    cmd = { "gopls", "serve" },
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
}))

require('lspconfig').rust_analyzer.setup(config())

require('lspconfig').tsserver.setup(config())

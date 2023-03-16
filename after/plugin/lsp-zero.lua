-- local lsp = require('lsp-zero').preset({
--   name = 'minimal',
--   set_lsp_keymaps = true,
--   manage_nvim_cmp = true,
--   suggest_lsp_servers = false,
-- })
local lsp = require("lsp-zero").preset({
  name = "recommended",
  suggest_lsp_servers = false,
})

lsp.ensure_installed({
    'jedi_language_server',
	'tsserver',
    'svelte',
	'rust_analyzer',
    'gopls',
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()


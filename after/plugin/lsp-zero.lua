-- local lsp = require('lsp-zero').preset({
--   name = 'minimal',
--   set_lsp_keymaps = true,
--   manage_nvim_cmp = true,
--   suggest_lsp_servers = false,
-- })
local lsp = require("lsp-zero").preset({
  name = "recommended",
  suggest_lsp_servers = false,
  set_lsp_keymaps = {omit = {'<F2>', '<F4>'}}
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr}

    vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end)

lsp.ensure_installed({
    -- 'jedi_language_server',
    'pyright',
    'tsserver',
    'svelte',
    'rust_analyzer',
    'gopls',
    'emmet_ls',
    'lua_ls',
})

local emmet_capabilities = vim.lsp.protocol.make_client_capabilities()
emmet_capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.configure('emmet_ls', {
capabilities = emmet_capabilities,
    filetypes = { 'html', 'css', 'sass', 'scss', 'svelte' },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()


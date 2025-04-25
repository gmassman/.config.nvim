-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.html.jinja", "*.html.j2", "*.html" },
  callback = function()
    vim.o.filetype = "htmldjango"
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "elixir" },
  command = "mix format",
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.ly", "*.ily", "*.tex" },
  command = "syntax sync fromstart",
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "rust" },
  command = "cargo fmt",
})

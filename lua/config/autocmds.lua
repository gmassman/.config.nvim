-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--local timer = nil
--vim.api.nvim_create_autocmd({ "TextChangedI", "CmdlineChanged" }, {
--  pattern = "*",
--  callback = function()
--    if timer then
--      vim.loop.timer_stop(timer)
--      timer = nil
--    end
--
--    timer = vim.loop.new_timer()
--    timer:start(
--      500,
--      0,
--      vim.schedule_wrap(function()
--        require("cmp").complete({ reason = require("cmp").ContextReason.Auto })
--      end)
--    )
--  end,
--})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.html.jinja", "*.html.j2", "*.html" },
  callback = function()
    vim.o.filetype = "htmldjango"
  end,
})

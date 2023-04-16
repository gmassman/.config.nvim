return {
  "rcarriga/nvim-notify",
  opts = {
    -- Maybe we'll get this to work one day... for now it's a little too verbose for my liking
    level = vim.log.levels.WARN,
  },
  config = function()
    require("telescope").load_extension("notify")
  end,
}

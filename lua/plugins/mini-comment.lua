return {
  "echasnovski/mini.comment",
  opts = {
    options = {
      custom_commentstring = function()
        if vim.bo.filetype == "lilypond" then
          return "% %s"
        else
          return vim.bo.commentstring
        end
      end,
    },
  },
}

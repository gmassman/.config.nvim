return {
  "ranjithshegde/ccls.nvim",

  dependencies = {
    "neovim/nvim-lspconfig",
  },

  config = function(_, _)
    -- local util = require("lspconfig.util")
    -- local server_config = {
    --   filetypes = { "c", "cpp", "objc", "objcpp", "opencl" },
    --   root_dir = function(fname)
    --     return util.root_pattern("compile_commands.json", "compile_flags.txt", ".git", ".ccls")(fname)
    --       or util.find_git_ancestor(fname)
    --   end,
    --   init_options = {
    --     cache = {
    --       -- directory = vim.env.XDG_CACHE_HOME .. "/ccls/",
    --       directory = vim.fs.normalize("~/.cache/ccls"), -- if on nvim 0.8 or higher
    --     },
    --   },
    --   --on_attach = require("my.attach").func,
    --   --capabilities = my_caps_table_or_func
    -- }
    -- require("ccls").setup({ lsp = { lspconfig = server_config } })
    require("ccls").setup({ lsp = { use_defaults = true } })
  end,
}

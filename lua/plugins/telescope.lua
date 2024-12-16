local mappings = require("telescope.mappings")
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {

      "nvim-telescope/telescope-live-grep-args.nvim",
      config = function()
        require("telescope").load_extension("live_grep_args")
      end,
    },
  },
  keys = {
    -- add a keymap to browse plugin files
    -- stylua: ignore
    {
      "<leader>fp",
      function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
      desc = "Find Plugin File",
    },
    {
      "<leader>/",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      desc = "Grep (root dir)",
    },
    {
      "<leader>sw",
      function()
        require("telescope-live-grep-args.shortcuts").grep_word_under_cursor()
      end,
      desc = "Word (root dir)",
    },
    {
      "<leader>sv",
      function()
        require("telescope-live-grep-args.shortcuts").grep_visual_selection()
      end,
      mode = { "v" },
      desc = "Visual (root dir)",
    },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      -- mappings = {
      --   i = {
      --     ["<M-q>"] = require("telescope.actions").send_selected_to_qflist + require("telescope.actions").open_qflist,
      --   },
      -- },
    },
    -- extensions = {
    --   live_grep_args = {
    --     -- auto_quoting = true,
    --     mappings = {
    --       i = {
    --         ["<C-'>"] = function()
    --           require("telescope-live-grep-args.actions").quote_prompt()
    --         end,
    --         ['<C-">'] = function()
    --           require("telescope-live-grep-args.actions").quote_prompt({ postfix = " --iglob " })
    --         end,
    --       },
    --     },
    --   },
    -- },
  },
}

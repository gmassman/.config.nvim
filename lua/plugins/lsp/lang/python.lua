return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "python" })
      end
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "python-lsp-server",
          -- "ruff-lsp",  -- No jump to definition... yet
        })
      end
    end,
  },

  -- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/lua/mason-lspconfig/server_configurations/pylsp/README.md
  -- Couldn't get this to work with the build options, so after install run `:PylspInstall python-lsp-ruff python-lsp-black pylsp-rope pyls-isort`
  {
    "neovim/nvim-lspconfig",
    -- build = function(_)
    --   -- local pipcmd = vim.fn.stdpath("data")
    --   --   .. "/mason/packages/python-lsp-server/venv/bin/python -m pip install --upgrade python-lsp-ruff"
    --   print("running pip...")
    --   io.popen(pipcmd)
    --   print("done")
    -- end,
    -- build = ":PylspInstall python-lsp-ruff",
    opts = {
      servers = {
        -- ruff_lsp = {
        --   settings = {},
        -- },

        pylsp = {
          -- pylsp = {
          -- pylsp.plugins.rope_autoimport.enabled
          -- configurationSources = [ ]
          settings = {
            pylsp = {
              plugins = {
                autopep8 = { enabled = false },
                jedi_completion = { enabled = true },
                isort = { enabled = true },
                black = { enabled = true },
                rope_autoimport = { enabled = true },
                -- rope_completion = { enabled = true },
                ruff = { enabled = false },
                -- ruff = {
                --   enabled = true,
                --   extendSelect = { "I" },
                -- },
              },
            },
          },
        },
        -- },
      },
    },
  },
}

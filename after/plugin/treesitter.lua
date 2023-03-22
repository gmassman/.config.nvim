require('nvim-treesitter.configs').setup({
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "javascript", "typescript", "python", "rust", "c", "lua", "vim", "help", "query", "gitcommit" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = { enable = true },
    indent = { enable = true },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<C-Space>",
            node_incremental = "<C-o>",
            scope_incremental = "<C-s>",
            node_decremental = "<C-O>",
        },
    },
})

-- empty setup using defaults
require("nvim-tree").setup({
    view = {
        signcolumn = "no",
    },
    renderer = {
        icons = {
            show = {
                git = true,
                file = false,
                folder = false,
                folder_arrow = true,
            },
            glyphs = {
                folder = {
                    arrow_closed = "⏵",
                    arrow_open = "⏷",
                },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "⌥",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "⊖",
                    ignored = "◌",
                },
            },
        },
    },
    system_open = {
        cmd = "open"
    }
})

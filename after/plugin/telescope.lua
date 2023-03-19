local builtin = require('telescope.builtin')
local themes = require('telescope.themes')

require('telescope').load_extension('fzf')

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Find a project file' })
vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Search all project files' })
vim.keymap.set('n', '<leader>pd', builtin.diagnostics, { desc = 'Search diagnostics' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Find git files' })
vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = 'Search help' })
vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = 'Find recently opened files' })
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = 'Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  builtin.current_buffer_fuzzy_find(themes.get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>lr', builtin.lsp_references, {})

-- no thanks Primeagen
--vim.keymap.set('n', '<leader>ps', function()
--	builtin.grep_string({ search = vim.fn.input("Grep > ") })
--end)

-- save
vim.keymap.set({"n", "i", "v"}, "<C-s>", "<cmd>w<CR>")

-- insert blank lines
vim.keymap.set("n", "<CR>", "o<Esc>k")
vim.keymap.set("n", "<leader><CR>", "O<Esc>j")

-- preferred redo key
vim.keymap.set("n", "U", "<C-r>")

-- open nvim tree
vim.keymap.set("n", "<leader>tt", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>tf", vim.cmd.NvimTreeFindFile)

-- move highlighted blocks up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- join and keep cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- search keeps cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete without yanking
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- don't yank when pasting
vim.keymap.set("v", "p", "\"_dP")

-- place things into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- quickfix shortcuts
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set('n', '<C-q>', '<cmd>cclose<cr>')
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- -- source all the things?
-- vim.keymap.set("n", "<leader>i", ":source ~/.config/nvim/init.lua<CR>")

-- Change leader key default behavior
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Terminal!!!
vim.keymap.set('t', '<C-[>', '<C-\\><C-n>')
vim.keymap.set('n', '<leader>"', function()
    vim.cmd.split()
    vim.cmd.terminal()
    vim.cmd.normal('J')  -- TODO figure out how to get this to work: vim.cmd.execute([[ "normal" \<C-w>J ]])
    vim.cmd.resize(10)
end)
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter", "TermOpen"}, {
    pattern = {"term://*"},
    group = vim.api.nvim_create_augroup("GarrettTerm", { clear = true }),
    command = 'execute "normal! A"',
    desc = 'Start in insert mode when entering a terminal buffer',
})

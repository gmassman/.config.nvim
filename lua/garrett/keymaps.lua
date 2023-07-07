local Util = require("garrett.util")

-- save
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { desc = "Save" })

-- insert blank lines
vim.keymap.set("n", "<CR>", "o<Esc>k", { desc = "Insert blank line below" })
vim.keymap.set("n", "<leader><CR>", "O<Esc>j", { desc = "Insert blank line above" })

-- preferred redo key
vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })

-- move highlighted blocks up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up" })

-- join and keep cursor in place
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })

-- search keeps cursor in the middle
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (down)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Next search result (up)" })

-- delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- don't yank when pasting
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without yanking" })

-- place things into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy into system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy into system clipboard" })

-- quickfix shortcuts
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz", { desc = "Next quickfix item" })
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz", { desc = "Previous quickfix item" })
vim.keymap.set("n", "<C-q>", "<cmd>cclose<cr>", { desc = "Close quickfix list" })
--vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz", { desc = "" })
--vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz", { desc = "" })

-- vim.keymap.set({ "n", "i" }, "<C-Right>", "<C-W>><C-W>>", { desc = "Increase horizontal window size" })
-- vim.keymap.set({ "n", "i" }, "<C-Left>", "<C-W><<C-W><", { desc = "Decrease horizontal window size" })
-- vim.keymap.set({ "n", "i" }, "<C-Up>", "<C-W>-<C-W>-", { desc = "Increase vertical window size" })
-- vim.keymap.set({ "n", "i" }, "<C-Down>", "<C-W>+<C-W>+", { desc = "Decrease vertical window size" })

-- replace word under cursor
vim.keymap.set(
  "n",
  "<leader>rw",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word under cursor" }
)

-- Change leader key default behavior
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- toggle options
vim.keymap.set({ "n", "v" }, "<leader>ul", function()
  vim.wo.number = not vim.wo.number
  vim.wo.relativenumber = not vim.wo.relativenumber
end, { desc = "Toggle line numbers" })
vim.keymap.set("n", "<leader>uf", require("plugins.lsp.format").toggle, { desc = "Toggle format on Save" })
vim.keymap.set("n", "<leader>us", function()
  Util.toggle("spell")
end, { desc = "Toggle Spelling" })
vim.keymap.set("n", "<leader>uw", function()
  Util.toggle("wrap")
end, { desc = "Toggle Word Wrap" })

-- Terminal!!!
vim.keymap.set("t", "<C-[>", "<C-\\><C-n>", { desc = "Enter noraml mode in terminal" })
vim.keymap.set("n", '<leader>"', function()
  vim.cmd.tabedit()
  vim.cmd.terminal()
  vim.wo.number = false
  vim.wo.relativenumber = false
end, { desc = "Open terminal in new tab" })

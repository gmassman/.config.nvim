-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
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

-- Bad bufferline, hijacking default H and L behavior...
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

require("which-key").add({
  { "<leader>y", group = "python" },
  {
    "<leader>yd",
    "Ofrom pprint import pprint as pp; import ipdb; ipdb.set_trace()<esc>:w<CR>",
    desc = "set an ipdb trace",
    mode = "n",
  },
})

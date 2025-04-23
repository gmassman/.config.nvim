-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- save
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { desc = "Save" })

-- insert blank lines
vim.keymap.set("n", "<CR>", "o<Esc>k", { desc = "Insert blank line below" })
vim.keymap.set("n", "<S-CR>", "O<Esc>j", { desc = "Insert blank line above" })

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

vim.keymap.set({ "n", "v" }, "<C-y>", '"+y', { desc = "Copy to system clipboard" })

vim.keymap.set("v", "<C-y>", '"+y', { desc = "Copy to clipboard" })

-- Bad bufferline, hijacking default H and L behavior...
vim.keymap.set({ "n", "v", "i" }, "<S-Left>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set({ "n", "v", "i" }, "<S-Right>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

require("which-key").add({
  { "<leader>y", group = "python" },
  {
    "<leader>yd",
    "Ofrom pprint import pprint as pp; import ipdb; ipdb.set_trace()<esc>:w<CR>",
    desc = "set an ipdb trace",
    mode = "n",
  },
  {
    "<leader>yc",
    "Ofrom pprint import pprint as pp; from celery.contrib import rdb; rdb.set_trace()<esc>:w<CR>",
    desc = "set an rdb trace (e.g. for Celery)",
    mode = "n",
  },
  {
    "<leader><leader>",
    "<esc>:Telescope find_files<cr>",
    desc = "Find Files (cwd)",
    mode = "n",
  },
  {
    "<leader>cx",
    "<esc>:LspRestart<cr>",
    desc = "LSP Restart",
    mode = "n",
  },
})

local function del_if_exists(lhs, mode)
  if vim.fn.mapcheck(lhs, mode) then
    vim.keymap.del(mode, lhs)
  end
end
-- Bad bufferline, hijacking default H and L behavior...
del_if_exists("<S-h>", "n")
del_if_exists("<S-l>", "n")

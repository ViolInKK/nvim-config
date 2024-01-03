vim.g.mapleader = " "

local keymap = vim.keymap
local cmd = vim.cmd

---------------------
-- General Keymaps
---------------------

-- window management
keymap.set("n", "<leader>wv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>wr", "<C-w>r") -- rotate windows
keymap.set("n", "<leader>wx", ":close<CR>") -- close current split window

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- move out of terminal
keymap.set("t", "<C-w>j", "<C-\\><C-n><C-w>j") -- move out of terminal down
keymap.set("t", "<C-w>k", "<C-\\><C-n><C-w>k") -- move out of terminal up
keymap.set("t", "<C-w>h", "<C-\\><C-n><C-w>h") -- move out of terminal left
keymap.set("t", "<C-w>l", "<C-\\><C-n><C-w>l") -- move out of terminal right

----------------------
-- Plugin Keybinds
----------------------

-- file tree
keymap.set("n", "<F2>", ":NvimTreeOpen<Enter>") -- open file tree


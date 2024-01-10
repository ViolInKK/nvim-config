vim.g.mapleader = " "

local keymap = vim.keymap
local cmd = vim.cmd
local opts = { noremap = true, silent = true }
local builtin = require('telescope.builtin')

---------------------
-- General Keymaps
---------------------

-- Window management
keymap.set("n", "<leader>wv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>wr", "<C-w>r") -- rotate windows
keymap.set("n", "<leader>wx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>wt", "<C-w>s<C-w>15-<Enter>:terminal<Enter>") -- open terminal in new horizontal window

-- Tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", "<Cmd>BufferClose<CR>", opts) -- close tab 

-- Move to previous/next
keymap.set("n", "<leader>tn", "<Cmd>BufferPrevious<CR>", opts)
keymap.set("n", "<leader>tp", "<Cmd>BufferNext<CR>", opts)

-- Goto buffer in position ...
keymap.set("n", "<leader>t1", "<Cmd>BufferGoto 1<CR>", opts)
keymap.set("n", "<leader>t2", "<Cmd>BufferGoto 2<CR>", opts)
keymap.set("n", "<leader>t3", "<Cmd>BufferGoto 3<CR>", opts)
keymap.set("n", "<leader>t4", "<Cmd>BufferGoto 4<CR>", opts)
keymap.set("n", "<leader>t5", "<Cmd>BufferGoto 5<CR>", opts)
keymap.set("n", "<leader>t6", "<Cmd>BufferGoto 6<CR>", opts)
keymap.set("n", "<leader>t7", "<Cmd>BufferGoto 7<CR>", opts)
keymap.set("n", "<leader>t8", "<Cmd>BufferGoto 8<CR>", opts)
keymap.set("n", "<leader>t9", "<Cmd>BufferGoto 9<CR>", opts)
keymap.set("n", "<leader>t0", "<Cmd>BufferLast<CR>", opts)




-- Move out of terminal
keymap.set("t", "<C-w>j", "<C-\\><C-n><C-w>j") -- move out of terminal down
keymap.set("t", "<C-w>k", "<C-\\><C-n><C-w>k") -- move out of terminal up
keymap.set("t", "<C-w>h", "<C-\\><C-n><C-w>h") -- move out of terminal left
keymap.set("t", "<C-w>l", "<C-\\><C-n><C-w>l") -- move out of terminal right

----------------------
-- Plugin Keybinds
----------------------

-- File tree
keymap.set("n", "<F2>", ":NvimTreeOpen<Enter>") -- open file tree

-- Fuzzy Finder(Telescope)
keymap.set("n", "<leader>ff", builtin.find_files)
keymap.set("n", "<leader>fb", builtin.buffers)
keymap.set("n", "<leader>fh", builtin.help_tags)
keymap.set("n", "<leader>fg", builtin.git_commits)


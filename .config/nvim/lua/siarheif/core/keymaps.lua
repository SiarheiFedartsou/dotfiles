vim.g.mapleader = ' '
 
local keymap = vim.keymap

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally 
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>ss", "<C-w>w") -- cycle through windows

keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

keymap.set("n", "<C-j>", ':m .+1<CR>==', { desc = "Move line down" })
keymap.set("n", "<C-k>", ':m .-2<CR>==', { desc = "Move line up" })
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move block down" })
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move block up" })


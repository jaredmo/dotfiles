--Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Open Netrw
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Navigate within insert mode
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")

--Move lines like a boss
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--Keep cursor centered
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--Paste without copy
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without copy" })

--Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank selection system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line system clipboard" })

--Find/replace on current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Find/replace current word" })

-- Buffers
vim.keymap.set("n", "<leader>bd", [[:bd<CR>]], { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>bm", [[:bmodified<CR>]], { desc = "List modified buffers" })
vim.keymap.set("n", "<leader>bn", [[:bn<CR>]], { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", [[:bp<CR>]], { desc = "Previous buffer" })

-- Terminal
vim.keymap.set("n", "<leader>t", [[:terminal<CR>]], { desc = "Open terminal" })

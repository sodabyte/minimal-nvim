vim.g.mapleader = " "
vim.g.maplocalleader = ","

local set = vim.keymap.set

set("n", "<C-t>", function()
  require("menu").open("default")
end, {})

-- better up/down
set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- move Lines
set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- add undo break-points
set("i", ",", ",<c-g>u")
set("i", ".", ".<c-g>u")
set("i", ";", ";<c-g>u")

-- better indenting
set("v", "<", "<gv")
set("v", ">", ">gv")

-- save file
set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- new file
set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- quit
set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

local map = vim.keymap.set

vim.g.mapleader = " "

-- Navegación entre splits
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

-- Guardar y salir rápido
map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>q", "<cmd>q<cr>")

-- Limpiar highlight de búsqueda
map("n", "<Esc>", "<cmd>nohlsearch<cr>")

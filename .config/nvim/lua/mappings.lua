require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
map("n", "fc", "<cmd> Telescope colorscheme <cr>", { desc = "Find colorscheme" })
map("n", "ff", "<cmd> Telescope find_files <cr>", { desc = "Find files" })
map("n", "fb", "<cmd> Telescope buffers <cr>", { desc = "Find open buffers" })
map("n", "fg", "<cmd> Telescope live_grep <cr>", { desc = "Live find files" })
map("n", ",,", "<cmd> NvimTreeToggle <cr>", { desc = "Nvim Tree Toggle" })
map("n", "<A-/>", "gcc", { desc = "toggle comment", remap = true })
map("v", "<A-/>", "gc", { desc = "toggle comment", remap = true })
map("n", "<C-Right>", ":NvimTreeResize +3<CR>", { noremap = true, silent = true })
map("n", "<C-Left>", ":NvimTreeResize -3<CR>", { noremap = true, silent = true })
-- EasyMotion prefix
map("n", ",", "<Plug>(easymotion-prefix)", { desc = "EasyMotion prefix" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

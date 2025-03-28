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
local hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "f", function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "F", function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "t", function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
vim.keymap.set("", "T", function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })

vim.keymap.set("n", ",l", "<cmd>HopChar1<cr>", { desc = "Hop search char 1" })
vim.keymap.set("n", ",ll", "<cmd>HopChar2<cr>", { desc = "Hop search char 2" })
vim.keymap.set("n", ",p", "<cmd>HopPattern<cr>", { desc = "Hop search pattern" })
vim.keymap.set("n", ",w", "<cmd>HopWord<cr>", { desc = "Hop search word" })
vim.keymap.set("n", ",n", "<cmd>HopNodes<cr>", { desc = "Hop search nodes" })

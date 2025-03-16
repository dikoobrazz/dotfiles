-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", ",,", "<cmd> NvimTreeToggle <cr>", { desc = "Nvim Tree Toggle" })
vim.keymap.set("n", "<C-Right>", ":NvimTreeResize +3<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Left>", ":NvimTreeResize -3<CR>", { noremap = true, silent = true })

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

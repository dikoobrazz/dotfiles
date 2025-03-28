return {
  "nvim-telescope/telescope.nvim",
  -- replace all Telescope keymaps with only one mapping
  keys = function()
    return {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "fc", "<cmd> Telescope colorscheme <cr>", desc = "Find colorscheme" },
      { "ff", "<cmd> Telescope find_files <cr>", desc = "Find files" },
      { "fb", "<cmd> Telescope buffers <cr>", desc = "Find open buffers" },
      { "fg", "<cmd> Telescope live_grep <cr>", desc = "Live find files" },
    }
  end,
}

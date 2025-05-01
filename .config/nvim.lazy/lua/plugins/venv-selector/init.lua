return {
  "linux-cultist/venv-selector.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  opts = {
    search_venv_managers = true,
    search_workspace = true,
    path = ".", -- Ищет .venv в текущем проекте
    name = "env",
  },
  keys = {
    { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
  },
}

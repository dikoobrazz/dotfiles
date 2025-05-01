return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["go"] = { "gofumpt", "goimports", "golines" },
        ["proto"] = { "buf" },
        ["python"] = { "black", "isort" },
      },
      formatters = {
        isort = {
          extra_args = { "--profile", "black" }, -- Совместимость с black
        },
        black = {
          extra_args = { "--line-length", "88" }, -- Настройка длины строки
        },
      },
    },
  },
}

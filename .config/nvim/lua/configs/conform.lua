local vim = vim

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofumpt", "goimports", "golines" },
    sql = { "sqlfmt" },
    json = { "prettier" },
    yaml = { "yamlfmt" },
    toml = { "taplo" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
  -- formatters = {
  --     ["goimports"] = {
  --         prepend_args = { "-rm-unused" },
  --     },
  --     golines = {
  --         prepend_args = { "--max-len=80" },
  --     },
  -- },
}

local conform = require "conform"

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.go", "*.lua", "*.sql", "*.json", "*.yaml", "*.toml" },
  callback = function(args)
    conform.format { bufnr = args.buf }
  end,
})

return options

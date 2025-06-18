return {
  "nathom/filetype.nvim",
  config = function()
    require("filetype").setup {
      overrides = {
        function_extensions = {
          html = function(path, bufnr)
            local full_path = vim.fn.expand "%:p"
            if path == nil or full_path == "" then return "html" end
            if full_path:match "templates/.*%.html$" or full_path:match "base/templates/base/.*%.html$" then
              return "htmldjango"
            end
            return "html"
          end,
        },
      },
    }
    -- Дополнительная автокоманда для надёжности
    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      pattern = { "*/templates/*.html", "*/base/templates/base/*.html" },
      callback = function() vim.bo.filetype = "htmldjango" end,
    })
  end,
}

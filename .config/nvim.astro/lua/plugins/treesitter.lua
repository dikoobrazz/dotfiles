-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
      "go",
      "python",
      "java",
      "json",
      "yaml",
      "toml",
      "sql",
      "markdown",
      "javascript",
      "typescript",
      "html",
      "css",
    },
  },
}

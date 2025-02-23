return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    opts = {
      ensure_installed = {
        "go",
        "gomod",
        "gosum",
        "gotmpl",
        "gowork",
        "markdown",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
        "json",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "lua-language-server",
        "prettier",
        "gopls",
        "goimports",
        "golines",
        "gofumpt",
        "json-lsp",
        "sqlls",
        "sqlfmt",
        "yamlfmt",
        "jsonnetfmt",
        "taplo",
        -- "yaml-language-server",
        -- "dockerfile-language-server",
      },
    },
  },

  {
    "nvchad/ui",
    config = function()
      require "nvchad"
    end,
  },

  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },

  {
    "supermaven-inc/supermaven-nvim",
    lazy = false,
    config = function()
      require("supermaven-nvim").setup {
        keymaps = {
          accept_suggestion = "<C-a>",
          clear_suggestion = "<C-]>",
          accept_word = "<A-a>",
        },
        log_level = "info", -- set to "off" to disable logging completely
        disable_inline_completion = false, -- disables inline completion for use with cmp
        disable_keymaps = false, -- disables built in keymaps for more manual control
      }
    end,
  },

  { "tpope/vim-unimpaired", lazy = false },
  { "tpope/vim-surround", lazy = false },
  { "easymotion/vim-easymotion", lazy = false },
}

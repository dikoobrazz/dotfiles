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
        "java",
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
        "jdtls",
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

  {
    "nvim-java/nvim-java",
    lazy = false,
    dependencies = {
      "nvim-java/lua-async-await",
      "nvim-java/nvim-java-core",
      "nvim-java/nvim-java-test",
      "nvim-java/nvim-java-dap",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      {
        "williamboman/mason.nvim",
        opts = {
          registries = {
            "github:nvim-java/mason-registry",
            "github:mason-org/mason-registry",
          },
        },
      },
    },
    config = function()
      require("java").setup {
        jdk = {
          auto_install = false,
          version = "17",
          path = "/usr/lib/jvm/java-17-openjdk-amd64", -- Укажи свой путь
        },
      }
      local nvlsp = require "nvchad.configs.lspconfig"
      require("lspconfig").jdtls.setup {
        cmd = {
          "/home/milk/.local/share/nvim/mason/bin/jdtls",
          "-configuration",
          "/home/milk/.cache/jdtls/config",
          "-data",
          "/home/milk/.cache/jdtls/workspace",
        },
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
        filetypes = { "java" },
      }
    end,
  },

  {
    "smoka7/hop.nvim",
    version = "*",
    lazy = false,
    opts = {
      keys = "etovxqpdygfblzhckisuran",
    },
  },
}

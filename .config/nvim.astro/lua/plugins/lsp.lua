return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "mason-org/mason.nvim", version = "^1.0.0" },
      { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
    },
    opts = {
      servers = {
        -- Python LSP (pylsp)
        pylsp = {
          cmd = { vim.fn.expand "$VIRTUAL_ENV/bin/pylsp" },
          filetypes = { "python" },
          root_dir = require("lspconfig.util").root_pattern("manage.py", ".git"),
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = { enabled = false },
                pyflakes = { enabled = false },
                pylint = {
                  enabled = true,
                  args = { "--load-plugins=pylint_django" },
                },
                mypy = { enabled = true },
                isort = { enabled = true },
                jedi_completion = { enabled = true, fuzzy = true },
                jedi_definition = { enabled = true },
                jedi_hover = { enabled = true },
                jedi_references = { enabled = true },
                jedi_signature_help = { enabled = true },
              },
            },
          },
        },
        -- HTML и Django шаблоны
        html = {
          cmd = { vim.fn.expand "~/.local/share/nvim.astro/mason/bin/vscode-html-language-server", "--stdio" },
          filetypes = { "html", "htmldjango" },
          root_dir = require("lspconfig.util").root_pattern("manage.py", ".git"),
          settings = {
            html = {
              format = { enable = true },
              validate = { html = true, css = true, javascript = true },
            },
          },
        },
        emmet_ls = {
          filetypes = { "html", "htmldjango" },
          init_options = {
            html = {
              options = {
                ["bem.enabled"] = true,
                ["output.selfClosingStyle"] = "xhtml",
              },
            },
          },
        },
        tailwindcss = {
          filetypes = { "html", "htmldjango" },
        },
      },
      setup = {
        pylsp = function(_, opts)
          local lspconfig = require "lspconfig"
          local cmd_path = vim.fn.expand "$VIRTUAL_ENV/bin/pylsp"
          if vim.fn.executable(cmd_path) == 0 then return false end
          lspconfig.pylsp.setup(opts)
          return true
        end,
        html = function(_, opts)
          local lspconfig = require "lspconfig"
          local cmd_path = vim.fn.expand "~/.local/share/nvim.astro/mason/bin/vscode-html-language-server"
          if vim.fn.executable(cmd_path) == 0 then return false end
          lspconfig.html.setup(opts)
          return true
        end,
        emmet_ls = function(_, opts)
          local lspconfig = require "lspconfig"
          lspconfig.emmet_ls.setup(opts)
          return true
        end,
      },
    },
  },
}

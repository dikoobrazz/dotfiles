return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          -- Your JDTLS configuration goes here
          jdtls = {
            settings = {
              java = {
                inlayHints = {
                  enabled = false,
                  -- parameterNames = { enabled = "all" },
                },
                signatureHelp = { enabled = false },
                -- handlers = {
                --   ["language/status"] = function(_, result, ctx, _)
                --     if result.type == "ServiceReady" then
                --       for _, bufnr in ipairs(vim.lsp.get_buffers_by_client_id(ctx.client_id)) do
                --         vim.lsp.inlay_hint.enable(bufnr, false)
                --         vim.lsp.inlay_hint.enable(bufnr, true)
                --       end
                --     end
                --   end,
                -- },
                -- configuration = {
                --   runtimes = {
                --     {
                --       name = "JavaSE-23",
                --       path = "/usr/local/sdkman/candidates/java/23-tem",
                --     },
                --   },
                -- },
              },
            },
          },
        },
        setup = {
          jdk = {
            auto_install = false,
          },
          jdtls = function()
            -- Your nvim-java configuration goes here
            require("java").setup({
              -- root_markers = {
              --   "settings.gradle",
              --   "settings.gradle.kts",
              --   "pom.xml",
              --   "build.gradle",
              --   "mvnw",
              --   "gradlew",
              --   "build.gradle",
              --   "build.gradle.kts",
              -- },
            })
          end,
        },
      },
    },
  },
}

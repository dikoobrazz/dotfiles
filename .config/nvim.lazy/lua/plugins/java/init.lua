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
                -- configuration = {
                --   runtimes = {
                --     {
                --       name = "JavaSE-23",
                --       path = "/usr/local/sdkman/candidates/java/23-tem",
                --     },
                --   },
                -- },
                -- require("lspconfig").jdtls.setup({
                --   root_dir = vim.fn.getcwd(),
                --   filetypes = { "java" },
                --   settings = {
                --     java = {
                --       project = {
                --         sourcePaths = { "src" }, -- Указываем папку с исходниками
                --       },
                --     },
                --   },
                -- }),
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

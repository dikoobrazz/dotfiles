return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "goimports",
        "golines",
        "gofumpt",
        "jdtls",
      },
    },
  },
}

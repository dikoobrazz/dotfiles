return {
  {
    "sainnhe/edge",
    lazy = false,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.edge_enable_italic = false
      vim.g.edge_style = "neon"
    end,
  },

  {
    "sainnhe/sonokai",
    lazy = false,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_style = "default"
      vim.g.sonokai_enable_italic = true
    end,
  },

  {
    "navarasu/onedark.nvim",
    lazy = false,
    config = function()
      require("onedark").setup({
        -- style = 'warm',
        style = "darker",
        -- style = 'warmer',
        code_style = {
          comments = "italic",
          keywords = "none",
          functions = "none",
          strings = "none",
          variables = "none",
        },
      })
    end,
  },

  {
    "Shatur/neovim-ayu",
    lazy = false,
    config = function()
      require("ayu").setup({
        mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        terminal = true, -- Set to `false` to let terminal manage its own colors.
        overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
      })
    end,
  },

  { "savq/melange-nvim", lazy = false },

  { "olimorris/onedarkpro.nvim", lazy = false },

  { "rebelot/kanagawa.nvim", lazy = false },

  { "frenzyexists/aquarium-vim", lazy = false },

  { "AlexvZyl/nordic.nvim", lazy = false },

  { "sainnhe/gruvbox-material", lazy = false },

  { "luisiacc/gruvbox-baby", lazy = false },

  { "rmehri01/onenord.nvim", lazy = false },

  { "kvrohit/substrata.nvim", lazy = false },

  { "EdenEast/nightfox.nvim", lazy = false },

  { "sainnhe/everforest", lazy = false },

  { "Yazeed1s/oh-lucy.nvim", lazy = false },

  { "Yazeed1s/minimal.nvim", lazy = false },
}

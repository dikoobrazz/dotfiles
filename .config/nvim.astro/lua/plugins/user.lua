-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " █████  ███████ ████████ ██████   ██████",
        "██   ██ ██         ██    ██   ██ ██    ██",
        "███████ ███████    ██    ██████  ██    ██",
        "██   ██      ██    ██    ██   ██ ██    ██",
        "██   ██ ███████    ██    ██   ██  ██████",
        " ",
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
--  {
--    "L3MON4D3/LuaSnip",
--    config = function(plugin, opts)
--      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
--      -- add more custom luasnip configuration such as filetype extend or custom snippets
--      local luasnip = require "luasnip"
--      luasnip.filetype_extend("javascript", { "javascriptreact" })
--    end,
--  },

  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
       -- include the default astronvim config that calls the setup call
       require("astronvim.plugins.configs.luasnip")(plugin, opts)
       -- load snippets paths
       require("luasnip.loaders.from_vscode").lazy_load({
       paths = { vim.fn.stdpath("config") .. "/snippets" },
     })
   end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
  { "kvrohit/substrata.nvim", lazy = false },
  { "EdenEast/nightfox.nvim", lazy = false },
  { "folke/tokyonight.nvim", lazy = false },
  { "sainnhe/everforest", lazy = false },
  { "luisiacc/gruvbox-baby", lazy = false },
  { "sainnhe/gruvbox-material", lazy = false },
  { "ishan9299/nvim-solarized-lua", lazy = false },
  -- { "shaunsingh/nord.nvim", lazy = false },
  { "bluz71/vim-nightfly-colors", lazy = false },
  { "rebelot/kanagawa.nvim", lazy = false },
  { "Shatur/neovim-ayu", lazy = false },
  { "nordtheme/vim", lazy = false },
  { "davidosomething/vim-colors-meh", lazy = false },
  { "marko-cerovac/material.nvim", lazy = false},
  { "aktersnurra/no-clown-fiesta.nvim", lazy = false },
  { "ribru17/bamboo.nvim", lazy = false },
  { "JoosepAlviste/palenightfall.nvim", lazy = false },
  { 'masukomi/vim-markdown-folding', lazy = false },
  { "tpope/vim-surround", lazy = false },
  { "xiantang/darcula-dark.nvim", lazy = false },
  { "AlexvZyl/nordic.nvim", lazy = false },
  { "frenzyexists/aquarium-vim", lazy = false },
  { "dgox16/oldworld.nvim", lazy = false },
  { "sho-87/kanagawa-paper.nvim", lazy = false },
  { "Yazeed1s/oh-lucy.nvim", lazy = false },
  { "Yazeed1s/minimal.nvim", lazy = false },
  { "yorik1984/newpaper.nvim", lazy = false },
  { 'yorickpeterse/nvim-grey', lazy = false },
  { 'Abstract-IDE/Abstract-cs', lazy = false },
  { 'rmehri01/onenord.nvim', lazy = false },
  { "rose-pine/neovim", lazy = false },
  { "loctvl842/monokai-pro.nvim", lazy = false,
    config = function()
      require("monokai-pro").setup({})
    end
  },
  -- {
  --   'uloco/bluloco.nvim',
  --   lazy = false,
  --   dependencies = { 'rktjmp/lush.nvim' },
  --   config = function()
  --     -- your optional config goes here, see below.
  --   end,
  -- },
  { "sainnhe/edge", lazy = false,
    config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.edge_enable_italic = false
        vim.g.edge_style = 'neon'
    end
  },
  {
    "projekt0n/github-nvim-theme", lazy = false,
      config = function()
        require('github-theme').setup({
          -- ...
        })

      end
  },
  {
    "sainnhe/sonokai",
        lazy = false,
        config = function()
            
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.sonokai_style = 'default'
        vim.g.sonokai_enable_italic = true
    end
  },
  { "navarasu/onedark.nvim", lazy = false,
          config = function()
          require('onedark').setup {
                  -- style = 'warm',
                  style = 'darker',
                  -- style = 'warmer',
                  code_style = {
                          comments = 'italic',
                          keywords = 'none',
                          functions = 'none',
                          strings = 'none',
                          variables = 'none'
                  },

          }
          end,
  },
  -- { "olimorris/onedarkpro.nvim", lazy = false },
  { "olivercederborg/poimandres.nvim", lazy = false,
          config = function()
          require('poimandres').setup {
          -- leave this setup function empty for default config
          -- or refer to the configuration section
          -- for configuration options
          }
          end,
  },
  {
    "supermaven-inc/supermaven-nvim", lazy = false,
        config = function()
        require("supermaven-nvim").setup({
            keymaps = {
                accept_suggestion = "<C-a>",
                clear_suggestion = "<C-]>",
                accept_word = "<A-a>",
            },
            log_level = "info", -- set to "off" to disable logging completely
            disable_inline_completion = false, -- disables inline completion for use with cmp
            disable_keymaps = false, -- disables built in keymaps for more manual control
        })
        end,
  },
}

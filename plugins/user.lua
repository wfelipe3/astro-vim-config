return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  {
    "Pocco81/auto-save.nvim",
    lazy = false,
  },
  "EdenEast/nightfox.nvim",
  "dracula/vim",
  "morhetz/gruvbox",
  "tomasr/molokai",
  "sonph/onehalf",
  "chriskempson/base16-vim",
  "gosukiwi/vim-atom-dark",
  "rakr/vim-one",
  "mhartington/oceanic-next",
  "drewtempelmeyer/palenight.vim",
  "kyoz/purify",
  -- "embark-theme/vim",
  "Olical/conjure",
  {
    "justinmk/vim-sneak",
    event = "BufRead",
  },
  { 
    "tpope/vim-surround",
    event = "BufRead", 
  },
  { 
    "michaeljsmith/vim-indent-object",
    event = "BufRead", 
  },
  {
    "chaoren/vim-wordmotion",
    event = "BufRead",
  },
  {
    "itchyny/vim-cursorword",
    enabled = false,
    event = "BufRead",
  },
  {
    "inkarkat/vim-ReplaceWithRegister",
    event = "BufRead",
  },
  {
    "kurkale6ka/vim-pairs",
    event = "BufRead",
  },
  {
    "rhysd/clever-f.vim",
    event = "BufRead",
  },
  {
    "gaving/vim-textobj-argument",
    event = "BufRead",
  },
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.api.nvim_set_keymap("i", "<C-C>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end,
  },
  {
    "bounceme/poppy.vim",
    lazy = false,
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
  },
  {
    "Mohammed-Taher/AdvancedNewFile.nvim",
    event = "BufRead",
    config = function()
      vim.api.nvim_set_keymap("n", "<C-n>", "<cmd>AdvancedNewFile<CR>", {noremap=true})
    end,
  },
  {
    "folke/zen-mode.nvim",
    event = "BufRead",
    config = function()
      vim.api.nvim_set_keymap("n", "<C-Z>", "<cmd>ZenMode<CR>", {noremap=true})
      require("zen-mode").setup {
        window = {
          width = 150,
        }
      }
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup {
        open_mapping = [[<C-A>]],
        size = 10,
        shading_factor = 2,
        direction = "float",
        float_opts = {
          border = "curved",
          highlights = { border = "Normal", background = "Normal" },
        },
      }
    end,
  },
}

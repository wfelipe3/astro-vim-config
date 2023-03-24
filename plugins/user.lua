return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "Pocco81/auto-save.nvim",
    lazy = false,
  },
  "EdenEast/nightfox.nvim",
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
    event = "BufRead",
  },
  {
    "inkarkat/vim-ReplaceWithRegister",
    event = "BufRead",
  },
  {
    "junegunn/vim-after-object",
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
  }
}

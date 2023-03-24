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
    lazy = false,
  },
  {
    "tpope/vim-surround",
    lazy = false,
  },
  {
    "michaeljsmith/vim-indent-object",
    lazy = false,
  },
  {
    "chaoren/vim-wordmotion",
    lazy = false,
  },
  {
    "itchyny/vim-cursorword",
    event = "BufRead",
  },
}

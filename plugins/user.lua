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
    enabled = true,
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
    config = function()
      require'hop'.setup()

      local api = vim.api
      local cmd = vim.cmd

      local function map(mode, lhs, rhs, opts)
        local options = { noremap = true }
        if opts then options = vim.tbl_extend("force", options, opts) end
        api.nvim_set_keymap(mode, lhs, rhs, options)
      end

      map('n', '<leader>hw', "<cmd>HopWord<cr>")
      map('n', '<leader>hh', "<cmd>HopChar1<cr>")
      map('n', '<leader>hl', "<cmd>HopLine<cr>")
      map('n', '<leader>hf', "<cmd>HopPattern<cr>")
    end,
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
  {
    "folke/twilight.nvim",
    lazy = false,
    config = function()
      require("twilight").setup {
      }
    end,
  },
  {
    "tversteeg/registers.nvim",
    name= "registers",
    keys = {
		  { "\"",    mode = { "n", "v" } },
		  { "<C-R>", mode = "i" }
	  },
	  cmd = "Registers",
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
  },
  {
    "goolord/alpha-nvim",
    enabled = false,
  }
}

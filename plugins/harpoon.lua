return {
  {
    "ThePrimeagen/harpoon",
    dependencies = {"nvim-lua/plenary.nvim"},
    lazy = false,
    config = function(_, opts)
      local api = vim.api
      local cmd = vim.cmd

      local function map(mode, lhs, rhs, opts)
        local options = { noremap = true }
        if opts then options = vim.tbl_extend("force", options, opts) end
        api.nvim_set_keymap(mode, lhs, rhs, options)
      end

      map("n", "hh", [[<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]])
      map("n", "ha", [[<cmd>lua require("harpoon.mark").add_file()<CR>]])
      map("n", "hn", [[<cmd>lua require("harpoon.ui").nav_next()<CR>]])
      map("n", "hp", [[<cmd>lua require("harpoon.ui").nav_prev()<CR>]])
      map("n", "h1", [[<cmd>lua require("harpoon.ui").nav_file(1)<CR>]])
      map("n", "h2", [[<cmd>lua require("harpoon.ui").nav_file(2)<CR>]])
      map("n", "h3", [[<cmd>lua require("harpoon.ui").nav_file(3)<CR>]])
      map("n", "h4", [[<cmd>lua require("harpoon.ui").nav_file(4)<CR>]])
      map("n", "h5", [[<cmd>lua require("harpoon.ui").nav_file(5)<CR>]])
    end,
  },
}

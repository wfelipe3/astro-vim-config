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

      map("n", "mm", [[<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]])
      map("n", "ma", [[<cmd>lua require("harpoon.mark").add_file()<CR>]])
      map("n", "mn", [[<cmd>lua require("harpoon.ui").nav_next()<CR>]])
      map("n", "mp", [[<cmd>lua require("harpoon.ui").nav_prev()<CR>]])
      map("n", "m1", [[<cmd>lua require("harpoon.ui").nav_file(1)<CR>]])
      map("n", "m2", [[<cmd>lua require("harpoon.ui").nav_file(2)<CR>]])
      map("n", "m3", [[<cmd>lua require("harpoon.ui").nav_file(3)<CR>]])
      map("n", "m4", [[<cmd>lua require("harpoon.ui").nav_file(4)<CR>]])
      map("n", "m5", [[<cmd>lua require("harpoon.ui").nav_file(5)<CR>]])
    end,
  },
}

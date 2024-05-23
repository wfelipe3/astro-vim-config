return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {"nvim-lua/plenary.nvim"},
    lazy = false,
    config = function(_, opts)
      -- local api = vim.api
      -- local cmd = vim.cmd
      --
      -- local function map(mode, lhs, rhs, opts)
      --   local options = { noremap = true }
      --   if opts then options = vim.tbl_extend("force", options, opts) end
      --   api.nvim_set_keymap(mode, lhs, rhs, options)
      -- end
      --
      -- map("n", "<leader>hh", [[<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>]])
      -- map("n", "<leader>ha", [[<cmd>lua require("harpoon.mark").add_file()<CR>]])
      -- map("n", "<leader>hn", [[<cmd>lua require("harpoon.ui").nav_next()<CR>]])
      -- map("n", "<leader>hp", [[<cmd>lua require("harpoon.ui").nav_prev()<CR>]])
      -- map("n", "<leader>h1", [[<cmd>lua require("harpoon.ui").nav_file(1)<CR>]])
      -- map("n", "<leader>h2", [[<cmd>lua require("harpoon.ui").nav_file(2)<CR>]])
      -- map("n", "<leader>h3", [[<cmd>lua require("harpoon.ui").nav_file(3)<CR>]])
      -- map("n", "<leader>h4", [[<cmd>lua require("harpoon.ui").nav_file(4)<CR>]])
      -- map("n", "<leader>h5", [[<cmd>lua require("harpoon.ui").nav_file(5)<CR>]])
      local harpoon = require("harpoon")

      -- REQUIRED
      harpoon:setup()
      -- REQUIRED

      vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
      -- vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

      vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end)
      vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end)

      -- basic telescope configuration
      local conf = require("telescope.config").values
      local function toggle_telescope(harpoon_files)
          local file_paths = {}
          for _, item in ipairs(harpoon_files.items) do
              table.insert(file_paths, item.value)
          end

          require("telescope.pickers").new({}, {
              prompt_title = "Harpoon",
              finder = require("telescope.finders").new_table({
                  results = file_paths,
              }),
              previewer = conf.file_previewer({}),
              sorter = conf.generic_sorter({}),
          }):find()
      end

      vim.keymap.set("n", "<leader>hh", function() toggle_telescope(harpoon:list()) end,
          { desc = "Open harpoon window" })

    end,
  },
}

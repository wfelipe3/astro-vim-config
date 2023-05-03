return {
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = {"nvim-treesitter/nvim-treesitter"},
        lazy = false,
	      config = function()
          require'nvim-treesitter.configs'.setup {
              textobjects = {
                  select = {
                      enable = true,
                      -- Automatically jump forward to textobj, similar to targets.vim 
                      lookahead = true,
                      keymaps = {
                          -- You can use the capture groups defined in textobjects.scm
                          ["af"] = "@function.outer",
                          ["if"] = "@function.inner",
                          ["ac"] = "@class.outer",
                          ["ic"] = "@class.inner",
                          ["ap"] = "@parameter.outer",
                          ["ip"] = "@parameter.iner",
                          ["as"] = {query="@scope", query_group = "locals", desc = "Select language scope"}
                      }
                  },
                  move = {
                      enable = true,
                      set_jumps = true, 
                      goto_next_start = {
                          [']m'] = '@function.outer',
                          [']]'] = '@class.outer'
                      },
                      goto_next_end = {
                          [']M'] = '@function.outer',
                          [']['] = '@class.outer'
                      },
                      goto_previous_start = {
                          ['[m'] = '@function.outer',
                          ['[['] = '@class.outer'
                      },
                      goto_previous_end = {
                          ['[M'] = '@function.outer',
                          ['[]'] = '@class.outer'
                      }
                  }
              }
          }
        end
    },
}

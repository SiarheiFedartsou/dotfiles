local nvimtree = require('nvim-tree')

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])

nvimtree.setup({
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", 
              arrow_open = "",
            },
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      update_focused_file = {
        enable = true,
      },
      git = {
        enable = true,
        timeout = 10000
      },
})


local keymap = vim.keymap

keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })


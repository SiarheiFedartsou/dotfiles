local cmp = require('cmp')

vim.opt.completeopt = 'menu,menuone,preview,noselect'

cmp.setup({
  mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), 
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(), 
        ["<C-e>"] = cmp.mapping.abort(), 
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),
  sources = cmp.config.sources({
        { name = "nvim_lsp"}, 
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
  }),
})


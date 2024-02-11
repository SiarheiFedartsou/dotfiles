local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')
local typescript = require('typescript')

local keymap = vim.keymap

local on_attach = function(client, buffer)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach
  }
})

local keymap = vim.keymap
keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true, desc = "Go to definition" })
keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true, desc = "Go to references" })


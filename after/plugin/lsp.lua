lsp = require('lsp-zero')

lsp.preset('recommended')

require('lspconfig').pyright.setup({})
require('lspconfig').lua_ls.setup({})

lsp.setup()


if vim.g.did_load_mason_plugin then
  return
end
vim.g.did_load_mason_plugin = true

require('mason').setup()
require('mason-lspconfig').setup()

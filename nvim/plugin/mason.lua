if vim.g.did_load_mason_plugin then
  return
end
vim.g.did_load_mason_plugin = true

require('mason').setup()
require('mason-lspconfig').setup()

-- enable auto setup for LSPs
require('mason-lspconfig').setup_handlers {
  -- default handler that gets called for every lsp
  function (server_name)
    require('lspconfig')[server_name].setup {}
  end,

  -- additional handler per LSP if wanting to do something more
  ["rust_analyzer"] = function ()
  end,

  ["kotlin_language_server"] = function ()
    require('lspconfig')["kotlin_language_server"].setup({
      settings = {
        kotlin = {
          compiler = {
            jvm = {
              target = "21"
            }
          }
        }
      }
    })
  end,
}

if vim.g.did_load_noice_plugin then
  return
end
vim.g.did_load_noice_plugin = true

require('noice').setup({
  lsp = {
    -- apparently this somehow affects plugins using treesitter?
    -- this is just from the "suggested setup" for noice
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true
    }
  },
  presets = {
    command_palette = true,
    long_message_to_split = true,
    lsp_doc_border = true
  }
})

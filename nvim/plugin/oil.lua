if vim.g.did_load_oil_plugin then
  return
end
vim.g.did_load_oil_plugin = true

require("oil").setup({
  columns = {
    "icon",
    "permissions",
    "size",
    "mtime"
  },
  delete_to_trash = true,
  skip_confirm_for_simple_edits = true,
  lsp_file_methods = {
    autosave_changes = true,
  },
  watch_for_changes = true,
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

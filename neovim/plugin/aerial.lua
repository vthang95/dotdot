require('aerial').setup {
  open_automatic = true,
  layout = {
    resize_to_content = true
  },
  lsp = {
    diagnostics_trigger_update = true,
    update_when_errors = true
  },
  colored = true,
  filter_kind = {
    "Class",
    "Constructor",
    "Enum",
    "Function",
    "Interface",
    "Module",
    "Method",
    "Struct",
    "Event",
    "Struct",
    "Variable",
    "Comment"
  },
  highlight_mode = "last",
  attach_mode = "global"
}

vim.api.nvim_set_hl(0, 'AerialLine', { fg = 'red' })

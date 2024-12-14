return {
  "sainnhe/gruvbox-material",

  config = function()
    vim.o.background = "dark"
    vim.g.gruvbox_material_background = "medium"
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_ui_contrast = "high"
    vim.cmd.colorscheme("gruvbox-material")
  end,
}

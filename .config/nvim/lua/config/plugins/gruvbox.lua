return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    -- (equivalent to: if has('termguicolors') | set termguicolors | endif)
    vim.opt.termguicolors = true
    vim.opt.background = "dark"
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_foreground = "mix"
    vim.g.gruvbox_material_better_performance = 1

    vim.cmd([[colorscheme gruvbox-material]])
  end,
}

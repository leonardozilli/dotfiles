local options = {
	title = true,
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 1,
  completeopt = { "menuone", "noselect" } ,
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  incsearch = true,
  ignorecase = true,
  readonly = false,
  mouse = "a",
  pumheight = 10,
  showmode = true,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 4,
  tabstop = 4,
  scrolloff = 5,
  sidescrolloff = 8,
  signcolumn = "yes",
  cursorline = true,
	titlestring = "%t",
  number = true,
	ruler = true,
  numberwidth = 4,
  --wrap = false,
}


for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Create an autocommand group for file-specific settings
local group = vim.api.nvim_create_augroup("FileTypeSpecific", { clear = true })

-- Set shiftwidth and tabstop to 2 for HTML, CSS, JavaScript, and Lua files
vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = { "html", "css", "javascript", "lua" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = group,
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

vim.opt.shortmess:append("c")

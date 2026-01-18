local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap =vim.keymap.set 

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

--keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Ctrl-Backspace: delete previous word
keymap("i", "<C-h>", "<C-w>", { noremap = true, silent = true })
keymap("c", "<C-h>", "<C-w>", { noremap = true, silent = true })

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +1<CR>", opts)
keymap("n", "<C-Down>", ":resize -1<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -1<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +1<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
-- keymap("v", "<", "<gv", opts)
-- keymap("v", ">", ">gv", opts)

keymap("n", "Q", "<nop>", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Cursor motion (visual-line friendly)
--keymap("n", "j", "gj", { noremap = true })
--keymap("n", "k", "gk", { noremap = true })
--keymap({ "n", "v" }, "J", "5j", { noremap = true })
--keymap({ "n", "v" }, "K", "5k", { noremap = true })

keymap("n", "J", "5j", { noremap = true, silent = true })
keymap("n", "K", "5k", { noremap = true, silent = true })
keymap("x", "J", "5j", { noremap = true, silent = true })
keymap("x", "K", "5k", { noremap = true, silent = true })

-- Search: very-magic by default
keymap("n", "/", "/\\v", { noremap = true })
keymap("v", "/", "/\\v", { noremap = true })

-- Clear search
vim.keymap.set("n", "<leader><space>", "<cmd>nohlsearch<CR>", { silent = true })

-- Insert mode escape
keymap("i", "jj", "<ESC>", { noremap = true })

-- Clipboard mappings
keymap("v", "<C-c>", '"+y', { noremap = true })
keymap("i", "<C-v>", "<C-r>+", { noremap = true })
keymap("n", "<C-c>", '"+yy', { noremap = true })

-- Window splits navigation
keymap("n", "<C-J>", "<C-W><C-J>", { noremap = true })
keymap("n", "<C-K>", "<C-W><C-K>", { noremap = true })
keymap("n", "<C-L>", "<C-W><C-L>", { noremap = true })
keymap("n", "<C-H>", "<C-W><C-H>", { noremap = true })
keymap("n", "<Tab>", "<C-w>", { noremap = true })

-- Formatting
keymap("n", "<leader>q", "gqip", { noremap = true })

-- Tabs management
keymap("n", "<leader>tn", "<cmd>tabnew<CR>", { noremap = true })
keymap("n", "<leader>t<leader>", "<cmd>tabnext<CR>", { noremap = true })
keymap("n", "<leader>tm", "<cmd>tabmove<CR>", { noremap = true })
keymap("n", "<leader>tc", "<cmd>tabclose<CR>", { noremap = true })
keymap("n", "<leader>to", "<cmd>tabonly<CR>", { noremap = true })

-- LSP
keymap("n", "<leader>k", vim.lsp.buf.hover, {
  silent = true,
  desc = "LSP hover",
})


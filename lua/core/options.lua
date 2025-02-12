vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.clipboard:append({ "unnamed", "unnamedplus" }) -- Sync clipboard between OS and Neovim. (default: '')
vim.opt.mouse = ""
vim.o.wrap = false
vim.o.linebreak = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.scrolloff = 4
vim.o.sidescrolloff = 8
vim.o.cursorline = false
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.hlsearch = true
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.o.updatetime = 50

vim.opt.colorcolumn = "100"

vim.opt.fillchars["fold"] = " "
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
vim.opt.foldlevel = 99

   

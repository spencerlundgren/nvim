require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- require("plugins.color-nord"),
  -- require("plugins.color-catppuccin"),
  require("plugins.color-vscode"),
  require("plugins.treesitter"),
  require("plugins.telescope"),
  require("plugins.lsp"),
  require("plugins.autocompletion"),
  require("plugins.typescript"),
  require("plugins.nonels"),
  require("plugins.gitsigns"),
  require("plugins.indentblankline"),
  require("plugins.fugitive"),
  require("plugins.misc"),
  require("plugins.nvimtmux"),
  require("plugins.vimwiki"),
  require("plugins.buffest"),
})

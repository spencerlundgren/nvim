return {
  'Mofiqul/vscode.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    -- Example config in lua
    vim.o.background = 'dark'
    local c = require('vscode.colors').get_colors()
    require('vscode').setup({
      transparent = false,
      italic_comments = true,
      underline_links = true,
    })

    -- Load the colorscheme
    vim.cmd.colorscheme 'vscode'
    vim.cmd("highlight ColorColumn ctermbg=0 guibg=#585858")

  end
}

return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    signs_staged = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    }
  },
  config = function()

		local gitsigns = require("gitsigns")

    local previousHunk = function()
      gitsigns.nav_hunk('prev')
    end
    local nextHunk = function()
      gitsigns.nav_hunk('next')
    end

		gitsigns.setup({
			on_attach = function(client, bufnr)
        vim.keymap.set('n', '<leader>ph', previousHunk, { buffer = bufnr, desc = 'go to [P]revious [H]unk' })
        vim.keymap.set('n', '<leader>nh', nextHunk, { buffer = bufnr, desc = 'go to [N]ext [H]unk' })
        vim.keymap.set('n', '<leader>sh', gitsigns.stage_hunk, { buffer = bufnr, desc = '[S]tage [H]unk' })
        vim.keymap.set('n', '<leader>rh', gitsigns.reset_hunk, { buffer = bufnr, desc = '[R]eset [H]unk' })
        vim.keymap.set('n', '<leader>fd', gitsigns.diffthis, { buffer = bufnr, desc = '[F]ile [D]iff' })
      end
    })
  end
}

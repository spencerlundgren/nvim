vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, opts)

-- delete single character without copying into register
-- vim.keymap.set('n', 'x', '"_x', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- close buffer

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when visually pasting
-- vim.keymap.set('v', 'p', '"dP', opts)  -- suggested way by someone. some weird things happened. I think due to this keymap
vim.keymap.set('x', '<leader>p', '\"_dP') -- used to do it this way

-- Swap lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts) -- swap visually selected line(s) with line below
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts) -- swap visually selected line with line above

vim.keymap.set('n', 'J', 'mzJ`z', opts) -- keep cursor in current column when deleting eol <CR>

-- Centered cursor when jumping
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Disable Q (Ex mode)
vim.keymap.set('n', 'Q', '<nop>')

-- tab autocomplete
-- vim.keymap.set('i', '<Tab>', function()
--   return vim.fn.pumvisible() == 1 and '<C-n>' or '<Tab>'
-- end, { expr = true })
--
-- vim.keymap.set('i', '<S-Tab>', function()
--   if (vim.fn.pumvisible() == 1) then
--     return '<C-p>'
--   else
--     return '<S-Tab>'
--   end
-- end, {expr = true, replace_keycodes = true})


-- select code action (i.e. import or delcare variable)
vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

-- resize vim splits
vim.keymap.set('n', '<C-w>k', ':resize +5<CR>', opts)
vim.keymap.set('i', '<C-w>k', ':resize +5<CR>', opts)
vim.keymap.set('v', '<C-w>k', ':resize +5<CR>', opts)
vim.keymap.set('n', '<C-w>j', ':resize -5<CR>', opts)
vim.keymap.set('i', '<C-w>j', ':resize -5<CR>', opts)
vim.keymap.set('v', '<C-w>j', ':resize -5<CR>', opts)
vim.keymap.set('n', '<C-w>h', ':vertical-resize -5<CR>', opts)
vim.keymap.set('i', '<C-w>h', ':vertical-resize -5<CR>', opts)
vim.keymap.set('v', '<C-w>h', ':vertical-resize -5<CR>', opts)
vim.keymap.set('n', '<C-w>l', ':vertical-resize +5<CR>', opts)
vim.keymap.set('i', '<C-w>l', ':vertical-resize +5<CR>', opts)
vim.keymap.set('v', '<C-w>l', ':vertical-resize +5<CR>', opts)


-- run current line or visual selection through programming language and print result
-- bash
vim.keymap.set('n', '<leader>b<CR>', 'yyp:.!sh<CR>', opts)
vim.keymap.set('v', '<leader>b<CR>', 'yPgv:!sh<CR>', opts)
-- python requires python package install => "python3 -m pip install pynvim"
vim.keymap.set('n', '<leader>p<CR>', 'yyp:.!python3<CR>', opts)
vim.keymap.set('v', '<leader>p<CR>', 'yPgv:!python3<CR>', opts)
-- javascript
vim.keymap.set('n', '<leader>n<CR>', "yyp:.!node<CR>", opts)
vim.keymap.set('v', '<leader>n<CR>', "yPgv:!node<CR>", opts)


vim.keymap.set('n', '<leader>lr', ':LspRestart<CR>') -- restart lsp server

vim.keymap.set('n', '<leader>nt', ':tabe %:h<CR>') -- open new tab in current files folder

vim.keymap.set("n", "<leader>sv", ":vsp<CR>") -- open current buffer in a new split view

vim.keymap.set("n", "<S-k>", vim.lsp.buf.hover) -- hover popup (don't jump into popup when pressing K once)

vim.keymap.set("n", "<F2>", vim.lsp.buf.rename) -- rename variable

vim.keymap.set("i", "<C-s>", vim.lsp.buf.signature_help) -- get function signature information in insert mode


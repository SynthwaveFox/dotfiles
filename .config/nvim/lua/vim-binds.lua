vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>E', ':NvimTreeFocus<CR>')
vim.keymap.set('n', '<leader>rnu', ':set relativenumber<CR>')
vim.keymap.set('n', '<leader>nu', ':set norelativenumber<CR>')
vim.keymap.set('n', '<leader>tl', ':NvimTreeResize +5<CR>')
vim.keymap.set('n', '<leader>th', ':NvimTreeResize -5<CR>')

vim.keymap.set('n', '<Esc>', ':noh<CR>')
vim.keymap.set('n', '<A-f>', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<A-t>', ':ToggleTerm<CR>')
vim.keymap.set('n', '<C-U>', '<C-u>zz')
vim.keymap.set('n', '<C-D>', '<C-d>zz')
vim.keymap.set('t', '<A-q>', '<c-\\><c-n> :ToggleTerm<CR>')

vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>", { desc = "evaluate operator", silent = true })
vim.keymap.set("n", "<localleader>os", ":noautocmd MoltenEnterOutput<CR>", { desc = "open output window", silent = true })

vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>", { desc = "re-eval cell", silent = true })
vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv", { desc = "execute visual selection", silent = true })
vim.keymap.set("n", "<localleader>r", ":MoltenEvaluateLine<CR>", { desc = "execute visual selection", silent = true })
vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>", { desc = "close output window", silent = true })
vim.keymap.set("n", "<localleader>md", ":MoltenDelete<CR>", { desc = "delete Molten cell", silent = true })

-- if you work with html outputs:
vim.keymap.set("n", "<localleader>mx", ":MoltenOpenInBrowser<CR>", { desc = "open output in browser", silent = true })

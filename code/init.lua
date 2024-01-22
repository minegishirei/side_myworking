

vim.keymap.set('n', '<S-h>', '10hzz')
vim.keymap.set('n', '<S-j>', '10jzz')
vim.keymap.set('n', '<S-k>', '10kzz')
vim.keymap.set('n', '<S-l>', '10lzz')
vim.keymap.set('n', 'h', 'hzz')
vim.keymap.set('n', 'j', 'jzz')
vim.keymap.set('n', 'k', 'kzz')
vim.keymap.set('n', 'l', 'lzz')
-- set s key to Window moving.
vim.keymap.set('n', 's', '<NOP>')
-- set s+hjkl move to other window
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sl', '<C-w>l')
vim.keymap.set('n', 'sh', '<C-w>h')
-- set s+sv separate window
vim.keymap.set('n', 'ss', '<C-w>s')
vim.keymap.set('n', 'sv', '<C-w>v')
-- set s+nptT move tab
vim.keymap.set('n', 'sn', 'gt')
vim.keymap.set('n', 'sp', 'gT')
vim.keymap.set('n', 'st', ':<C-u>tabnew<CR>')
-- set s+qQ kill buffer or close window
vim.keymap.set('n', 'sq', ':<C-u>q<CR>')
vim.keymap.set('n', 'sb', ':<C-u>bd!<CR>')

-- set ESC+ESC Clear Search hilight
vim.keymap.set('n', '<ESC><ESC>', ':<C-u>set nohlsearch!<CR>')


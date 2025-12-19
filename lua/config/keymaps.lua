---[[Keymaps]]
--
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Keybinds to make buffer navigation easier.
vim.keymap.set('n', '<leader>be', ':enew<CR>', { desc = '[E]dit new blank [B]uffer in new window' })
vim.keymap.set('n', '<leader>bh', ':bfirst<CR>', { desc = 'Switch to First [B]uffer [H]jkl' })
vim.keymap.set('n', '<leader>bl', ':blast<CR>', { desc = 'Switch to Last [B]uffer hjk[L]' })
vim.keymap.set('n', '<leader>bj', ':bprevious<CR>', { desc = 'Switch to Previous [B]uffer h[J]kl' })
vim.keymap.set('n', '<leader>bk', ':bnext<CR>', { desc = 'Switch to Next [B]uffer hj[K]l' })
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = '[D]elete current [B]uffer' })
vim.keymap.set('n', '<leader>bw', ':bw<CR>', { desc = '[W]ipeout current [B]uffer' })

-- Keybinds for the File Manager Plugins
vim.keymap.set('n', '<leader>fo', ':Oil<CR>', { desc = 'Open [F]ile tree in [O]il mode' })

-- Function for toggling set spell
function ToggleSpell(scope)
  return function()
    scope.spell = not scope.spell
    vim.cmd 'redraw'
    print('spell is ' .. tostring(scope.spell))
  end
end

vim.keymap.set('n', '<Leader>ts', ToggleSpell(vim.wo), { expr = true, desc = '[T]oggle [S]pellchecking' })

-- keymap for trimming whitespace with mini-trailspace
vim.keymap.set('n', '<leader>tw', ':lua MiniTrailspace.trim()<CR>', { desc = '[T]rim [W]hitespace' })

-- greatest remap ever per thePrimagen
-- if you copy and paste over other text it keeps the originally copied text
vim.keymap.set('x', '<leader>P', [["_dP]])

-- next greatest remap ever : asbjornHaland
-- yanks into system clipboard as apost to y that yanks and remains in neovim
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- pastes from the system clipboard
vim.keymap.set('n', '<leader>p', [["+P]])

-- Deletes to void register
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

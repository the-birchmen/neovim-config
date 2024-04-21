--[[Keymaps]]
--
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

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
vim.keymap.set('n', '<leader>bf', ':bfirst<CR>', { desc = 'Switch to [F]irst [B]uffer' })
vim.keymap.set('n', '<leader>bl', ':blast<CR>', { desc = 'Switch to [L]ast [B]uffer' })
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = 'Switch to [N]ext [B]uffer' })
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = 'Switch to [P]revious [B]uffer' })
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = '[D]elete current [B]uffer' })
vim.keymap.set('n', '<leader>bw', ':bw<CR>', { desc = '[W]ipeout current [B]uffer' })

-- Keybinds for the File Manager Plugins
vim.keymap.set('n', '<leader>ff', ':Vifm<CR>', { desc = '[F]ind [F]ile in Vifm' })
vim.keymap.set('n', '<leader>ft', ':TabVifm<CR>', { desc = 'Open [F]ilemanager in a new [T]ab' })
vim.keymap.set('n', '<leader>fv', ':VsplitVifm<CR>', { desc = 'Open [F]ilemanager in a [V]ertical Split' })
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

-- Keybinds for the Prose Functions
vim.keymap.set('n', '<leader>tz', ':ZenMode<CR>', { desc = '[T]oggle [Z]en Mode' })
vim.keymap.set('n', '<leader>po', ':PeekOpen<CR>', { desc = '[P]eek [O]pen' })
vim.keymap.set('n', '<leader>pc', ':PeekClose<CR>', { desc = '[P]eek [C]lose' })

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

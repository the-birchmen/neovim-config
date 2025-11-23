vim.opt_local.linebreak = true

-- vim.keymap.set({ 'n', 'v' }, 'j', 'gj')
-- vim.keymap.set({ 'n', 'v' }, 'k', 'gk')

vim.keymap.set({ 'n', 'x' }, 'j', function()
  return vim.v.count > 0 and 'j' or 'gj'
end, { noremap = true, expr = true })

vim.keymap.set({ 'n', 'x' }, 'k', function()
  return vim.v.count > 0 and 'k' or 'gk'
end, { noremap = true, expr = true })

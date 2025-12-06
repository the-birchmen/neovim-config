vim.opt_local.conceallevel = 1
vim.opt_local.linebreak = true

-- vim.keymap.set({ 'n', 'v' }, 'j', 'gj')
-- vim.keymap.set({ 'n', 'v' }, 'k', 'gk')

vim.keymap.set({ 'n', 'x' }, 'j', function()
  return vim.v.count > 0 and 'j' or 'gj'
end, { noremap = true, expr = true })

vim.keymap.set({ 'n', 'x' }, 'k', function()
  return vim.v.count > 0 and 'k' or 'gk'
end, { noremap = true, expr = true })

vim.keymap.set('n', '<leader>on', ':Obsidian new', { desc = '[O]bsidian [N]ew Note' })
vim.keymap.set('n', '<leader>ol', ':Obsidian links<CR>', { desc = '[O]bsidian [L]ink picker' })
vim.keymap.set('n', '<leader>ob', ':Obsidian backlinks<CR>', { desc = '[O]bsidian [B]acklink picker' })
vim.keymap.set('n', '<leader>ot', ':Obsidian tags<CR>', { desc = '[O]bsidian [T]ag picker' })
vim.keymap.set('n', '<leader>os', ':Obsidian search<CR>', { desc = '[O]bsidian [S]earch picker' })
vim.keymap.set('n', '<leader>ot', ':Obsidian toc<CR>', { desc = '[O]bsidian [T]OC picker' })
vim.keymap.set('v', '<leader>oe', ':Obsidian extract_note', { desc = '[O]bsidian [E]xtract selected' })

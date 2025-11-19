-- [[ Basic Autocommands ]]
--  See :help lua-guide-autocommands

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- start git messages in insert mode
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('bufcheck', {clear = true}),
  pattern = { 'gitcommit', 'gitrebase' },
  command = 'startinsert | 1',
})

return {
  {
    'reedes/vim-pencil',
    init = function()
      vim.g['pencil#wrapModeDefault'] = 'soft'
      vim.cmd [[
      augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
]]
    end,
  },
}

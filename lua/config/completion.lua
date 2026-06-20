vim.o.autocomplete = true
vim.opt.completeopt = 'menu,menuone,noselect,popup'

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client:supports_method 'textDocument/completion' then
      vim.lsp.completion.enable(true, args.data.client_id, args.buf, {
        autotrigger = true,
      })
    end
  end,
})

-- Inside LspAttach or global init
vim.keymap.set('i', '<C-y>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-y>'
  end
  return '<C-y>'
end, { expr = true, silent = true })

vim.keymap.set('i', '<C-e>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-e>'
  end
  return '<C-e>'
end, { expr = true, silent = true })

-- Navigate next/previous
vim.keymap.set('i', '<C-n>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-n>'
  end
  return '<C-n>'
end, { expr = true, silent = true })

vim.keymap.set('i', '<C-p>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-p>'
  end
  return '<C-p>'
end, { expr = true, silent = true })

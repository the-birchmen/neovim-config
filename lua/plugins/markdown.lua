-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'tadmccorkle/markdown.nvim',
    ft = 'markdown', -- or 'event = "VeryLazy"'
    opts = {
      -- configuration here or empty for defaults
    },
  },

  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast', -- requires deno system package be installed
    config = function()
      require('peek').setup {
        auto_load = true, -- whether to automatically load preview when
        -- entering another markdown buffer
        close_on_bdelete = true, -- close preview window on buffer delete

        syntax = true, -- enable syntax highlighting, affects performance

        theme = 'dark', -- 'dark' or 'light'

        update_on_change = true,

        app = 'webview', -- 'webview', 'browser', string or a table of strings
        -- explained below

        filetype = { 'markdown' }, -- list of filetypes to recognize as markdown

        -- relevant if update_on_change is true
        throttle_at = 200000, -- start throttling when file exceeds this
        -- amount of bytes in size
        throttle_time = 'auto', -- minimum amount of time in milliseconds
        -- that has to pass before starting new render
      }
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end,
  },
}

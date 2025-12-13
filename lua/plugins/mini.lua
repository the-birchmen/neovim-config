-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]parenthen
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Comments
      require('mini.comment').setup()

      -- Automatically underlines the word under the cursor in normal mode
      require('mini.cursorword').setup()

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      require('mini.statusline').setup()

      -- Buffers are listed in the order of their identifier.
      -- Different highlight groups for "states" of buffer affecting 'buffer tabs'.
      require('mini.tabline').setup()

      -- Highlighting is done only in modifiable buffer by default, only in Normal mode, and stops in Insert mode and when leaving window.
      -- Trim all trailing whitespace with MiniTrailspace.trim().
      -- Trim all trailing empty lines with MiniTrailspace.trim_last_lines().
      require('mini.trailspace').setup()

      -- Moves lines around with Alt hjkl while in Nomal and Visual Modes
      require('mini.move').setup()
      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },
}

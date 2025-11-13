return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    'BufReadPre /home/dustin/Second-Brain/**.md',
    'BufNewFile /home/dustin/Second-Brain/**.md',
    'BufReadPre /home/dustin/Nextcloud/Linux-Wiki/**.md',
    'BufNewFile /home/dustin/Nextcloud/Linux-Wiki/**.md',
  },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'hrsh7th/nvim-cmp',
  },
  opts = {
    workspaces = {
      {
        name = 'Second-Brain',
        path = '~/Second-Brain',
      },
      {
        name = 'Linux-Wiki',
        path = '~/Nextcloud/Linux-Wiki',
      },
    },
    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,
      -- Trigger completion at 2 chars.
      min_chars = 2,
    },
  },
}

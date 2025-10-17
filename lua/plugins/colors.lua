function ColorMyPencils(color)
  color = color or 'gruvbox'
  vim.cmd.colorscheme(color)
  vim.cmd.hi 'Comment gui=none'
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return {
  {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = 'night', -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
      }
    end,
  },

  { 'ellisonleao/gruvbox.nvim', priority = 1000, config = true },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
      }
    end,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        disable_background = true,
      }

      -- vim.cmd 'colorscheme rose-pine'

      ColorMyPencils()
    end,
  },
}

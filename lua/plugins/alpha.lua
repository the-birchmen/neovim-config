-- My configuration for Alpha.nvim.
-- There is probably a better way to configure this. I just copied the entire theta theme to this file.
-- https://github.com/Magi3r/nvim.git was the inspiration
return {
  {
    'goolord/alpha-nvim',
    config = function()
      -- originally authored by @AdamWhittingham

      -- local path_ok, plenary_path = pcall(require, 'plenary.path')
      -- if not path_ok then
      --   return
      -- end

      local dashboard = require 'alpha.themes.dashboard'
      -- local cdir = vim.fn.getcwd()
      -- local if_nil = vim.F.if_nil

      local header = {
        type = 'text',
        val = {
          [[                                                    ]],
          [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
          [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
          [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
          [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
          [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
          [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
          [[                                                    ]],
        },
        opts = {
          position = 'center',
          hl = 'Type',
          -- wrap = "overflow";
        },
      }

      local buttons = {
        type = 'group',
        val = {
          { type = 'text', val = 'jjjjkkkkkk :wq!', opts = { hl = 'SpecialComment', position = 'center' } },
          { type = 'padding', val = 1 },
          dashboard.button('e', '  New file', '<cmd>ene<CR>'),
          dashboard.button('SPC s .', '  Recent Files'),
          dashboard.button('SPC f b', '  File Browser'),
          dashboard.button('SPC s f', '  Telescope'),
          dashboard.button('SPC s v', '  Obsidian'),
          dashboard.button('SPC s n', '  Config Files'),
          dashboard.button('u', '󰚰  Update plugins', '<cmd>Lazy sync<CR>'),
          dashboard.button('q', '∅  Quit', '<cmd>qa<CR>'),
        },
        position = 'center',
      }

      local config = {
        layout = {
          { type = 'padding', val = 2 },
          header,
          { type = 'padding', val = 2 },
          buttons,
        },
        opts = {
          margin = 5,
          setup = function()
            vim.api.nvim_create_autocmd('DirChanged', {
              pattern = '*',
              group = 'alpha_temp',
              callback = function()
                require('alpha').redraw()
                vim.cmd 'AlphaRemap'
              end,
            })
          end,
        },
      }
      require('alpha').setup(config)
    end,
  },
}

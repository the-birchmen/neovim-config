return {
  {
    'goolord/alpha-nvim',
    config = function()
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
          { type = 'text', val = 'kill -9 $(ps | grep nvim | cut -d " " -f 1)', opts = { hl = 'SpecialComment', position = 'center' } },
          { type = 'padding', val = 1 },
          dashboard.button('e', '  New file', '<cmd>ene<CR>'),
          dashboard.button('SPC s r', '  Recent Files'),
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

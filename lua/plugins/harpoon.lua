return {
  {
    'theprimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon'):setup()
    end,
    keys = {
      {
        '<leader>ah',
        function()
          require('harpoon'):list():add()
        end,
        desc = '[H]arpoon a file',
      },
      {
        '<leader>al',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = '[L]ist of harpooned files',
      },
      {
        '<leader>a1',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = 'Harpoon to file [1]',
      },
      {
        '<leader>a2',
        function()
          require('harpoon'):list():select(2)
        end,
        desc = 'Harpoon to file [2]',
      },
      {
        '<leader>a3',
        function()
          require('harpoon'):list():select(3)
        end,
        desc = 'Harpoon to file [3]',
      },
      {
        '<leader>a4',
        function()
          require('harpoon'):list():select(4)
        end,
        desc = 'Harpoon to file [4]',
      },
      {
        '<leader>a5',
        function()
          require('harpoon'):list():select(5)
        end,
        desc = 'Harpoon to file [5]',
      },
    },
  },
}

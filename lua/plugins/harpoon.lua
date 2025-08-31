return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = {
    {
      '<leader>ha',
      function()
        require('harpoon'):list():add()
      end,
      desc = 'Harpoon Add File',
    },
    {
      '<leader>hl',
      function()
        require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())
      end,
      desc = 'Harpoon Toggle List',
    },
    {
      '<leader>hc',
      function()
        require('harpoon'):list():clear()
      end,
      desc = 'Harpoon Clear List',
    },

    {
      '<leader>h0',
      function()
        require('harpoon'):list():select(1)
      end,
      desc = 'Harpoon Buffer 1',
    },
    {
      '<leader>h1',
      function()
        require('harpoon'):list():select(2)
      end,
      desc = 'Harpoon Buffer 2',
    },
    {
      '<leader>h2',
      function()
        require('harpoon'):list():select(3)
      end,
      desc = 'Harpoon Buffer 3',
    },
    {
      '<leader>h3',
      function()
        require('harpoon'):list():select(4)
      end,
      desc = 'Harpoon Buffer 4',
    },
    {
      '<leader>h4',
      function()
        require('harpoon'):list():select(5)
      end,
      desc = 'Harpoon Buffer 5',
    },
    {
      '<leader>h5',
      function()
        require('harpoon'):list():select(6)
      end,
      desc = 'Harpoon Buffer 6',
    },
    {
      '<leader>h6',
      function()
        require('harpoon'):list():select(7)
      end,
      desc = 'Harpoon Buffer 7',
    },
    {
      '<leader>h7',
      function()
        require('harpoon'):list():select(8)
      end,
      desc = 'Harpoon Buffer 8',
    },
    {
      '<leader>h8',
      function()
        require('harpoon'):list():select(9)
      end,
      desc = 'Harpoon Buffer 9',
    },
    {
      '<leader>h9',
      function()
        require('harpoon'):list():select(10)
      end,
      desc = 'Harpoon Buffer 10',
    },

    {
      '<leader>hp',
      function()
        require('harpoon'):list():prev()
      end,
      desc = 'Harpoon Previous Buffer',
    },
    {
      '<leader>hn',
      function()
        require('harpoon'):list():next()
      end,
      desc = 'Harpoon Next Buffer',
    },
  },
}

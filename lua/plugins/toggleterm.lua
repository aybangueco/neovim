return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<c-\>]],
    },
    keys = {
      {
        '<leader>gl',
        function()
          local Terminal = require('toggleterm.terminal').Terminal
          local lazygit = Terminal:new {
            cmd = 'lazygit',
            dir = 'git_dir',
            direction = 'float',
            float_opts = {
              border = 'double',
            },
          }
          return lazygit:toggle()
        end,
        desc = 'LazyGit',
      },
    },
  },
}

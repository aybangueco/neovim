return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    lazygit = {},
    terminal = {},
  },
  keys = {
    {
      '<leader>tT',
      function()
        local count = vim.v.count > 0 and vim.v.count or 1
        require('snacks').terminal.toggle(nil, { id = id })
      end,
      desc = 'Toggle [T]erminal',
    },
    {
      '<leader>tL',
      function()
        require('snacks').lazygit()
      end,
      desc = 'Toggle [L]azyGit',
    },
  },
}

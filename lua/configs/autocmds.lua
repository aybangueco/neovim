-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Add color scheme on mini.indentscope
vim.api.nvim_create_autocmd('ColorScheme', {
  callback = function()
    vim.api.nvim_set_hl(0, 'MiniIndentscopeSymbol', { fg = vim.fn.synIDattr(vim.fn.hlID 'Special', 'fg') })
    vim.api.nvim_set_hl(0, 'MiniIndentscopePrefix', { fg = vim.fn.synIDattr(vim.fn.hlID 'Comment', 'fg') })
  end,
})

vim.api.nvim_create_autocmd({ 'BufEnter' }, {
  pattern = 'NvimTree*',
  callback = function()
    local api = require 'nvim-tree.api'

    if not api.tree.is_visible() then
      api.tree.open()
    end
  end,
})

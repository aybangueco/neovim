return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }
      -- vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      require('onedark').setup {
        style = 'deep',
        transparent = true,
        code_style = {
          comments = 'italic',
          keywords = 'none',
          functions = 'bold',
          strings = 'none',
          variables = 'none',
        },
      }
      -- Enable theme
      require('onedark').load()
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'frappe',
        transparent_background = true,
        float = {
          transparent = true,
          solid = true,
        },
        no_italic = true,
        term_colors = true,
        dim_inactive = {
          enabled = true,
          shade = 'dark',
          percentage = 0.80,
        },
        default_integrations = true,
      }
      -- vim.cmd.colorscheme 'catppuccin'
    end,
  },
}

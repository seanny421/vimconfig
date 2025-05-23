"https://github.com/nvim-lualine/lualine.nvim

lua << END
-- custom local theme (not being used)
local colors = {
  blue   = '#4689cc',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#ffffff',
  red    = '#ff5189',
  orange = '#e0ac1d',
  greenblue = '#0c3240',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.white },
    b = { fg = colors.black, bg = colors.orange },
    c = { fg = colors.black, bg = colors.cyan },
  },

  insert = { a = { fg = colors.black, bg = colors.red } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.red, bg = colors.red } },


  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = dracula,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {'NvimTree'},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END

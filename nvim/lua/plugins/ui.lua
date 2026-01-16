return {
  -- TokyoNight Theme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },

  -- Dashboard (Greeting Screen)
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
       local dashboard = require("alpha.themes.startify")
       -- Set header (You can put any text here)
       dashboard.section.header.val = {
           [[                               __                ]],
           [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
           [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
           [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
           [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
           [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
       }
       require("alpha").setup(dashboard.config)
    end
  },

  -- Status Line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({ options = { theme = "tokyonight" } })
    end,
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({})
    end,
  },
}

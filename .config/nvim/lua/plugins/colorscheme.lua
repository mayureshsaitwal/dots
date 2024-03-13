return { 
  "nyoom-engineering/oxocarbon.nvim",
   lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Load the colorscheme here
      vim.opt.background = "dark"
      vim.cmd.colorscheme 'oxocarbon'
      -- You can configure highlights by doing something like
      --vim.cmd.hi 'Comment gui=none'
    end,
} 

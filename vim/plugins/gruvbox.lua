return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = true,
  opts = {
    contrast = "hard"  -- can be "hard", "soft" or empty string
  },
  config = function(_, opts)
    vim.o.background = "dark" -- or "light" for light mode

    -- load the colorscheme here
    require('gruvbox').setup(opts)
    vim.cmd([[colorscheme gruvbox]])
  end,
}

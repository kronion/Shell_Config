return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = {
    tabline = {
      lualine_a = { "buffers" },  -- List buffers in tabline
    },
  }
}

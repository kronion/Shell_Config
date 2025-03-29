-- From https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- fill any relevant options here
  },
  keys = {
    { "|", "<cmd>Neotree toggle<cr>", desc = "Toggle NeoTree" },
    { "<leader>b", "<cmd>Neotree toggle show buffers right<cr>", desc = "Show open buffers in NeoTree" },
    { "<leader>s", "<cmd>Neotree float git_status<cr>", desc = "Show git status in NeoTree" },
  },
}

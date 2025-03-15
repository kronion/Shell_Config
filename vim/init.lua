require("config.lazy")

-- copy to clipboard
-- Requires xclip (apt install xclip)
vim.opt.clipboard = "unnamedplus"

-- tabs and indentation
vim.opt.expandtab = true  -- tabs to spaces
vim.opt.tabstop = 2  -- tabs = 2 spaces
vim.opt.shiftwidth = 2  -- indentation = 2 spaces

-- Allow mouse use in all modes
vim.opt.mouse = "a"

-- line numbers and cursor position
vim.opt.number = true  -- display line numbers
vim.opt.relativenumber = true  -- make line numbers relative to current line
vim.opt.colorcolumn = "120"  -- display column for 120 character limit
vim.opt.cursorline = true  -- underline the current line of the cursor
vim.opt.scrolloff = 5  -- keep cursor at least 5 lines from edge of window

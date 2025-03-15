return {
  'neovim/nvim-lspconfig',
  config = function()
    --[[
    -- Connect LSP servers (and enable keymappings)
    -- See https://github.com/neovim/nvim-lspconfig
    -- ]]

    -- Mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    local opts = { noremap=true, silent=true }
    vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)  -- Show all diagnostic messages in a floating window
    -- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)  -- Show a location list of lines with diagnostics

    -- Use an on_attach function to only map the following keys
    -- after the language server attaches to the current buffer
    local on_attach = function(client, bufnr)
      -- -- Enable completion triggered by <c-x><c-o>
      -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local bufopts = { noremap=true, silent=true, buffer=bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)  -- Show type signature of function under cursor

      -- I probably don't need these?
      -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
      -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
      -- vim.keymap.set('n', '<space>wl', function()
      --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      -- end, bufopts)

      vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)  -- Rename all references to variable under cursor
      vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)  -- Show all references to variable under cursor
      vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
    end

    local nvim_lsp = require('lspconfig')

    -- Use a loop to conveniently call 'setup' on multiple servers and
    -- map buffer local keybindings when the language server attaches
    local servers = { 'pyright', 'ts_ls' }
    for _, lsp in ipairs(servers) do
      nvim_lsp[lsp].setup {
        on_attach = on_attach,
        flags = {
          debounce_text_changes = 100,
        }
      }
    end

    -- Make a global nvim diagnostic configuration change to show the source of a diagnostic message
    vim.diagnostic.config({ virtual_text = { source = true }})
  end
}

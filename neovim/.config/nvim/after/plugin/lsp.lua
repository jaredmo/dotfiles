require("mason").setup()

require("mason-lspconfig").setup {
    automatic_enable = true,
    ensure_installed = {
        'bashls',
        --'clangd',
        'eslint',
        'gopls',
        'lua_ls',
        'marksman',
        'pyright',
        --'ruff_lsp',
        --'rust_analyzer',
        'yamlls',
    }
}

local cmp = require('cmp')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
    },
    mapping = {
        ['<Tab>'] = cmp.mapping.confirm({ select = true })
    },
})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Goto definition" })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "Goto declaration" })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "Goto reference(s)" })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "Goto implementation(s)" })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Display hover info" })
vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format({ async = true }) end, { desc = 'Format buffer' })

-- Use virtual_lines for displaying diagnostics
vim.diagnostic.config({
  virtual_lines = true,
  virtual_text = false,
})


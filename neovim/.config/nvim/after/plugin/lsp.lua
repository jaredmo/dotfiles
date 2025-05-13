local lsp = require('lsp-zero').preset({})

lsp.preset("recommended")

require("mason").setup()

require("mason-lspconfig").setup {
    ensure_installed = {
        'bashls',
        --'clangd',
        'eslint',
        -- 'gopls',
        'lua_ls',
        'marksman',
        'pyright',
        --'ruff_lsp',
        --'rust_analyzer',
        'yamlls',
    } }

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    lsp.buffer_autoformat() -- Format on save
end)

-- luasnip
-- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/autocomplete.md#add-an-external-collection-of-snippets
-- Make sure you setup `cmp` after lsp-zero

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
    },
    mapping = {
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        ['<Tab>'] = cmp.mapping.confirm({ select = true })
    },
})

lsp.setup()

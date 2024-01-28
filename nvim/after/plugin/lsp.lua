local lsp = require('lsp-zero').preset({})

lsp.preset("recommended")

require("mason").setup()

require("mason-lspconfig").setup {
    ensure_installed = {
--    'tsserver',
    'clangd',
    'lua_ls',
    'pyright',
--    'black',
    'ruff_lsp',
    'bashls',
    'marksman',
    'docker_compose_language_service',
    'eslint',
    'rust_analyzer'
}}

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

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
    },
    mapping = {
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        ['<Tab>'] = cmp.mapping.confirm({ select = true })
    }
})

lsp.setup()

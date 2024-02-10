local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = 'nvim-lua/plenary.nvim'
    },
    {
        'nvim-treesitter/nvim-treesitter',
        cmd = 'TSUpdate'
    },
    { 'nvim-treesitter/nvim-treesitter-context' },
    { 'nvim-treesitter/playground' },
    { 'mbbill/undotree' },
    { 'tpope/vim-fugitive' },
    { 'tpope/vim-sleuth' },
    {
        'ellisonleao/gruvbox.nvim',
        opts = { transparent_mode = true }
    },
    { 'saadparwaiz1/cmp_luasnip' },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false
    },
    {
        'folke/which-key.nvim',
        opts = {}
    },

    -- LSP, completions, & snippets
    {
        'williamboman/mason.nvim',
        cmd = 'MasonUpdate'
    },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    {
        'L3MON4D3/LuaSnip',
        dependencies = { 'rafamadriz/friendly-snippets' },
    },

    -- Git signs
    {
        -- Adds git related signs to the gutter, as well as utilities for managing changes
        'lewis6991/gitsigns.nvim',
        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- Navigation
                map({ 'n', 'v' }, ']c', function()
                    if vim.wo.diff then
                        return ']c'
                    end
                    vim.schedule(function()
                        gs.next_hunk()
                    end)
                    return '<Ignore>'
                end, { expr = true, desc = 'Jump to next hunk' })

                map({ 'n', 'v' }, '[c', function()
                    if vim.wo.diff then
                        return '[c'
                    end
                    vim.schedule(function()
                        gs.prev_hunk()
                    end)
                    return '<Ignore>'
                end, { expr = true, desc = 'Jump to previous hunk' })

                -- Actions
                -- visual mode
                map('v', '<leader>gs', function()
                    gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
                end, { desc = 'Stage hunk' })
                map('v', '<leader>gr', function()
                    gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
                end, { desc = 'Reset hunk' })
                -- normal mode
                map('n', '<leader>gs', gs.stage_hunk, { desc = 'Stage hunk' })
                map('n', '<leader>gr', gs.reset_hunk, { desc = 'Reset hunk' })
                map('n', '<leader>gS', gs.stage_buffer, { desc = 'Stage buffer' })
                map('n', '<leader>gu', gs.undo_stage_hunk, { desc = 'Undo stage hunk' })
                map('n', '<leader>gR', gs.reset_buffer, { desc = 'Reset buffer' })
                map('n', '<leader>gp', gs.preview_hunk, { desc = 'Preview hunk' })
                map('n', '<leader>gb', function()
                    gs.blame_line { full = false }
                end, { desc = 'Blame line' })
                map('n', '<leader>gd', gs.diffthis, { desc = 'Diff against index' })
                map('n', '<leader>gD', function()
                    gs.diffthis '~'
                end, { desc = 'Diff against last commit' })

                -- Toggles
                map('n', '<leader>gtb', gs.toggle_current_line_blame, { desc = 'Toggle git blame line' })
                map('n', '<leader>gtd', gs.toggle_deleted, { desc = 'Toggle git show deleted' })

                -- normal or visual
                map({ 'o', 'x' }, '<leader>gv', gs.select_hunk, { desc = 'Select hunk' })
            end,
        },
    },
})

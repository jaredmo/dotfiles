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

vim.g.mapleader = " "
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
    { 'ellisonleao/gruvbox.nvim' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'ThePrimeagen/harpoon' },
    { 'rafamadriz/friendly-snippets' },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- lsp-zero
    {
        'williamboman/mason.nvim',
        cmd = 'MasonUpdate'
    },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' }
})


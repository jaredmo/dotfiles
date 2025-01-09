-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
--require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    actions = {
        open_file = {
            quit_on_open = false
        }
    }
})

vim.keymap.set('n', "<leader>n", vim.cmd.NvimTreeToggle, { desc = "Toggle NvimTree" })
vim.keymap.set('n', "<leader>e", vim.cmd.NvimTreeFocus, { desc = "Focus NvimTree" })

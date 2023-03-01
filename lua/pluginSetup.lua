vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<Right>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

require("presence").setup({
    auto_update         = true,
    neovim_image_text   = "😎😎😎",
    main_image          = "neovim",
    debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    show_time           = true, 
    -- Show the timer

    editing_text        = "Editing %s",
    file_explorer_text  = "Browsing %s",
    git_commit_text     = "Committing changes",
    plugin_manager_text = "Managing plugins",
    reading_text        = "Reading %s",
    workspace_text      = "Working on %s",
    line_number_text    = "Line %s out of %s",
})

require("nvim-tree").setup({
  filters = {
    dotfiles = true,
  },
})

require("bufferline").setup{
    options = {
        separator_style = "slant" or "padded_slant",
    }
}

require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "rust", "javascript", "typescript", "python", "bash", "json", "yaml", "lua", "vim", "help", "go" },
    context_commentstring = {
        enable = true
    },
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    },
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

vim.cmd[[colorscheme tokyonight]]

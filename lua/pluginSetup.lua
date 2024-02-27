require('leap').add_default_mappings()
require('toggleterm').setup()

require("startup").setup({
    theme = "mini_evil",
})

require("presence").setup({
    auto_update         = true,
    neovim_image_text   = "😎😎😎",
    main_image          = "neovim",
    debounce_timeout    = 10, -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
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
    view = {
        side = 'right',
    },
    update_focused_file = {
        enable = true
    },
    filters = {
        dotfiles = false,
        git_clean = false,
        exclude = {},
        custom = { '^.git$' }
    },
    renderer = {
        group_empty = true,
    },
    git = {
        enable = true,
        ignore = false,
        show_on_dirs = true,
        show_on_open_dirs = true,
        timeout = 200,
    },
})

require("bufferline").setup {
    options = {
        separator_style = "slant" or "padded_slant",
    }
}

require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "c",
        "rust",
        "javascript",
        "typescript",
        "python",
        "bash",
        "json",
        "yaml",
        "lua",
        "vim",
        "go",
        "zig",
    },
    ignore = { "help" },
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

require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true
})
vim.cmd [[colorscheme catppuccin]]

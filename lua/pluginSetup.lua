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

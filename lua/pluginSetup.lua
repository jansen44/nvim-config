vim.cmd[[colorscheme tokyonight]]

require("nvim-tree").setup()

require("bufferline").setup{
    options = {
        separator_style = "slant" or "padded_slant",
    }
}

require('nvim-treesitter.configs').setup {
  context_commentstring = {
    enable = true
  }
}

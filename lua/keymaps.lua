local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map('n', '<leader>h', ':nohl<CR>')

map('n', '<leader>e', ':NvimTreeToggle<CR>')
map('n', '<leader>c', ':bdelete<CR>')
map('n', '<leader>bj', ':BufferLinePick<CR>')
map('n', '<leader>bn', ':BufferLineCycleNext<CR>')
map('n', '<leader>bb', ':BufferLineCyclePrev<CR>')

map('n', '<leader>F', ':lua vim.lsp.buf.format()<CR>')
map('n', '<leader>f', ':Telescope find_files hidden=true<CR>')
map('n', '<leader>st', ':Telescope live_grep<CR>')

map('n', '<leader>t', ':ToggleTerm<CR>')
map('n', '<leader>T', ':ToggleTerm size=40 direction=float<CR>')

map('t', '<C-t>', '<C-\\><C-n>:ToggleTerm<CR>')

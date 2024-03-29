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
map('n', '<leader>c', ':BufDel<CR>')
map('n', '<leader>q', ':close<CR>')
map('n', '<leader>bj', ':BufferLinePick<CR>')
map('n', '<leader>bn', ':BufferLineCycleNext<CR>')
map('n', '<leader>bb', ':BufferLineCyclePrev<CR>')

map('n', '<leader>F', ':lua vim.lsp.buf.format()<CR>')
map('n', '<leader>f', ':Telescope find_files<CR>')
map('n', '<leader>st', ':Telescope live_grep<CR>')

-- Terminals
local Terminal = require("toggleterm.terminal").Terminal

vim.keymap.set({ "n" }, "<leader>lg", function()
    local term = Terminal:new({ cmd = "lazygit", direction = "float", size = 0.8 })
    term:toggle()
end)

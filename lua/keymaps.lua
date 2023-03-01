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
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>st', ':Telescope live_grep<CR>')

vim.api.nvim_set_keymap("i", "<C-h>", 'copilot#Previous()', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Previous()', { silent = true, expr = true })

-- Terminals
local Terminal = require("toggleterm.terminal").Terminal
local terms = {}

local term_opts = {
    { cmd = "zsh", direction = "horizontal", size = 0.3 },
    { cmd = "zsh", direction = "float",      size = nil },
}

for i, term in pairs(term_opts) do
    terms[i] = Terminal:new({ cmd = "zsh", count = i, direction = term.direction })
end

for i, term in ipairs(terms) do
    local key = string.format("<leader>t%d", i)

    vim.keymap.set({ "n" }, key, function()
        term:toggle(term.size, term.direction)
    end, { desc = string.format("Toggle Term %d", term.count), noremap = true, silent = true })
end

vim.keymap.set({ "t" }, "<C-t>", function()
    for _, term in pairs(terms) do
        if term:is_open() then
            term:close()
        end
    end
end, { desc = "Close Terms", noremap = true, silent = true })

vim.keymap.set({ "n" }, "<leader>lg", function()
    local term = Terminal:new({ cmd = "lazygit", direction = "float", size = 0.8 })
    term:toggle()
end)

vim.keymap.set({ "n" }, "<leader>k9", function()
    local term = Terminal:new({ cmd = "k9s", direction = "float", size = 0.8 })
    term:toggle()
end)

map('t', '<C-w>', '<C-\\><C-n><C-w>')

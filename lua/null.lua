local null_ls = require('null-ls')

local sources = {
    null_ls.builtins.code_actions.eslint,
    null_ls.builtins.formatting.prettier,
}

null_ls.setup({
    sources = sources,
})

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
vim.api.nvim_create_autocmd("BufWritePre", {
    group = augroup,
    callback = function()
        vim.lsp.buf.format()
    end
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.py', '*.sh', '*.md' },
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})

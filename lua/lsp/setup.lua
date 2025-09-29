local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('clangd', {
  cmd = {'clangd'},
  root_markers = { '.git' },
  capabilities = capabilities,
})

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = { "*.c", "*.cpp", "*.h", "*.hpp" },
  callback = function()
    vim.lsp.enable("clangd")
  end
})

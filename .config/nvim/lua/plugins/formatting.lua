vim.pack.add({
  { src = "https://github.com/stevearc/conform.nvim" }
})

require("conform").setup({
  format_on_save = {
    timeout_ms = 8000,
    lsp_format = "fallback",
  },
  formatters_by_ft = {
    lua = {"stylua"},
    markdown = {"prettierd"},
    go = { "goimports", "gofmt" },
  },
})

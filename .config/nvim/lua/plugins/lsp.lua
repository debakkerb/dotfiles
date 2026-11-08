vim.pack.add({
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/rachartier/tiny-code-action.nvim" },
})

vim.lsp.enable({ "lua_ls", "gopls" })

require("tiny-code-action").setup({
  picker = {
    "telescope",
    opts = {
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          prompt_position = "top",
          width = 0.8,
          height = 0.8,
          preview_width = 0.5,
        },
      },
      sorting_strategy = "ascending",
      prompt_prefix = "",
      entry_prefix = " ",
      prompt_title = false,
      results_title = false,
      preview_title = false,
    },
  },
  backend = "delta",
})

vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "go to definition" })
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "go to declaration" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "go to implementation" })
vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, { desc = "go to type definition" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "find references" })
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { desc = "hover documentation" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "rename symbol" })

vim.pack.add({
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
})

require("telescope").setup({})

vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", "<leader>sb", "<cmd>Telescope buffers<CR>", { silent = true })

vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-frecency.nvim" },
})

require("telescope").setup({})

vim.keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<CR>", { silent = true })
vim.keymap.set(
	"n",
	"<leader>sr",
	'<cmd>Telescope frecency workspace=CWD path_display={"filename_first"}<CR>',
	{ silent = true }
)
vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", "<leader>sb", "<cmd>Telescope buffers<CR>", { silent = true })
vim.keymap.set("n", "<leader>sd", "<cmd>Telescope diagnostics<CR>", { silent = true })
vim.keymap.set("n", "<leader>sh", "<cmd>Telescope help_tags<CR>", { silent = true })
vim.keymap.set("n", "<leader>su", "<cmd>Telescope git_status<CR>", { silent = true })
vim.keymap.set("n", "<leader>s.", "<cmd>Telescope resume<CR>", { silent = true })

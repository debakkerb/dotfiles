vim.pack.add({
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	{ src = "https://github.com/martindur/zdiff.nvim" },
})

require("gitsigns").setup()

vim.keymap.set("n", "<leader>zd", "<cmd>Zdiff<CR>")

vim.api.nvim_create_autocmd("Filetype", {
	pattern = "zdiff",
	callback = function(event)
		local opts = { buffer = event.buf, silent = true }

		vim.keymap.set("n", "<CR>", "<cmd>ZdiffOpen<CR>", opts)
		vim.keymap.set("n", "<Tab>", "<cmd>ZdiffToggle<CR>", opts)
		vim.keymap.set("n", "R", "<cmd>ZdiffRefresh<CR>", opts)
		vim.keymap.set("n", "q", "<cmd>bdelete<CR>", opts)

		-- Switch between uncomitted changes and comparison against main.
		vim.keymap.set("n", "m", function()
			if vim.b.zdiff.base == "" then
				vim.cmd("Zdiff main")
			else
				vim.cmd("Zdiff")
			end
		end, opts)
	end,
})

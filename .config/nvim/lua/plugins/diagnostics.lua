vim.pack.add({
	{ src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" },
})

require("tiny-inline-diagnostic").setup({
	preset = "classic",
	options = {
		use_icons_from_diagnostic = true,
		multilines = {
			enabled = true,
		},
	},
})

-- jump to next error
vim.keymap.set("n", "]e", function()
	vim.diagnostic.jump({ count = 1, severity = vim.diagnostic.severity.ERROR, float = true })
end, { desc = "next diagnostic" })

-- jump to previous error
vim.keymap.set("n", "[e", function()
	vim.diagnostic.jump({ count = -1, severity = vim.diagnostic.severity.ERROR, float = true })
end, { desc = "next diagnostic" })

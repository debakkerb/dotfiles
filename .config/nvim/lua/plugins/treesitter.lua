vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

local languages = {
	"bash",
	"go",
	"gomod",
	"gosum",
	"lua",
	"luadoc",
	"markdown",
	"markdown_inline",
	"vim",
	"vimdoc",
	"yaml",
}

local installed = require("nvim-treesitter.config").get_installed()
local treesitter = require("nvim-treesitter")

treesitter.setup({
	install_dir = vim.fn.stdpath("data") .. "/site",
})

vim.api.nvim_create_autocmd("PackChanged", {
	desc = "update treesitter parsers after plugin updates",
	group = vim.api.nvim_create_augroup("nvim_treesitter_update", { clear = true }),
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if name == "nvim-treesitter" and (kind == "install" or kind == "update") then
			vim.cmd("TSUpdate")
		end
	end,
})

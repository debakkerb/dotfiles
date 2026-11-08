vim.pack.add({
	"https://github.com/nvim-mini/mini.pairs",
	"https://github.com/nvim-mini/mini.surround",
	"https://github.com/nvim-mini/mini.indentscope",
})

-- auto pairs
require("mini.pairs").setup()

-- surround
-- sa = add surround or direct with 'saiw'
-- sd = delete surround
-- sr = replace surround
require("mini.surround").setup()

-- indent scope
require("mini.indentscope").setup({
	symbole = "|",
	draw = {
		animation = require("mini.indentscope").gen_animation.none(),
	},
})

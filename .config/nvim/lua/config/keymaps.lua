vim.keymap.set({ "n", "v" }, "<leader>", "<nop>", { desc = "disable leader key default" })
vim.keymap.set("n", "<leader>re", ":restart<CR>", { silent = true, desc = "restart nvim" })

vim.keymap.set("n", "<leader>d", "<C-w>d", { remap = true, desc = "show diagnostic float" })

vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "clear search highlight", silent = true})

vim.keymap.set("n", "K", "<C-u>zz", { desc = "scroll up and center" })
vim.keymap.set("n", "J", "<C-d>zz", { desc = "scroll down and center" })

vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { silent = true, desc = "vertical split" })

vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection"})
vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection" })

vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true, desc = "makes file executable" })


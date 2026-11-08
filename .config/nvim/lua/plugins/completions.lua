vim.pack.add({
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("*") },
})

require("blink.cmp").setup({
  signature = {
    enabled = true
  },
  keymap = {
    preset = "default",
    ["<Tab>"] = {"accept", "fallback"},
    ["<C-Space>"] = {"show"},
    ["J"] = { "select_next", "fallback"},
    ["K"] = {"select_prev", "fallback"},
  },
  fuzzy = {
    implementation = "rust",
  },
})

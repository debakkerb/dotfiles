# NVIM Shortcuts

An overview of all shortcuts that currently exist in this repository. Currently done manually, the goal is to automate this.

## VIM

| Shortcut   | Description            |
| ---------- | ---------------------- |
| <leader>re | Restart                |
| <leader>d  | Show diagnostic float  |
| K          | Scroll up and center   |
| J          | Scroll down and center |
| <leader>v  | Vertical split         |
| <          | (VISUAL) Unindent      |
| >          | (VISUAL) Indent        |
| <leader>X  | Make file executable   |

## Completions

| Shortcut  | Description            |
| --------- | ---------------------- |
| Tab       | Accept, falback        |
| <C-Space> | Show                   |
| J         | Select next / fallback |
| K         | Select prev / fallback |

## LSP

| Shortcut   | Description           |
| ---------- | --------------------- |
| <leader>gd | Go to definition      |
| <leader>gD | Go to declaration     |
| <leader>gi | Go to implementation  |
| <leader>gt | Go to type definition |
| <leader>gr | Find reference        |
| <leader>h  | Hover documentation   |
| <leader>rn | Rename symbol         |

## Surround (Mini)

| Shortcut | Description          |
| -------- | -------------------- |
| sa       | Surround (e.g. saiw) |
| sd       | Delete surround      |
| sr       | Replace surround     |

## Oil

| Shortcut  | Description |
| --------- | ----------- |
| <leader>e | Open Oil    |

## Telescope

| Shortcut   | Description         |
| ---------- | ------------------- |
| <leader>sg | Telescope live_grep |
| <leader>sb | Telescope buffers   |

# Useful Commands

- Check which filetype the current file has (LSP troubleshooting): `:set filetype?`
- Check which LSP is attached to the current buffer: `che vim.lsp`

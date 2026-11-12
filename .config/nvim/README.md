# NVIM Shortcuts

An overview of all shortcuts that currently exist in this repository. Currently done manually, the goal is to automate this.

Leader = Space.

## VIM

| Shortcut         | Description            |
| ---------------- | ---------------------- |
| &lt;leader&gt;re | Restart                |
| &lt;leader&gt;d  | Show diagnostic float  |
| K                | Scroll up and center   |
| J                | Scroll down and center |
| &lt;leader&gt;v  | Vertical split         |
| &lt;             | (VISUAL) Unindent      |
| &gt;             | (VISUAL) Indent        |
| &lt;leader&gt;X  | Make file executable   |

## Completions

| Shortcut        | Description                             |
| --------------- | --------------------------------------- |
| Tab             | Accept, go to next placeholder, falback |
| S-Tab           | Go to previous placeholder, falback     |
| &lt;C-Space&gt; | Show                                    |
| J               | Select next / fallback                  |
| K               | Select prev / fallback                  |

## LSP

| Shortcut         | Description           |
| ---------------- | --------------------- |
| &lt;leader&gt;gd | Go to definition      |
| &lt;leader&gt;gD | Go to declaration     |
| &lt;leader&gt;gi | Go to implementation  |
| &lt;leader&gt;gt | Go to type definition |
| &lt;leader&gt;gr | Find reference        |
| &lt;leader&gt;h  | Hover documentation   |
| &lt;leader&gt;rn | Rename symbol         |
| &lt;leader&gt;ca | Code action popup     |

## Surround (Mini)

| Shortcut | Description          |
| -------- | -------------------- |
| sa       | Surround (e.g. saiw) |
| sd       | Delete surround      |
| sr       | Replace surround     |

## Oil

| Shortcut        | Description |
| --------------- | ----------- |
| &lt;leader&gt;e | Open Oil    |

## Telescope

| Shortcut         | Description                            |
| ---------------- | -------------------------------------- |
| &lt;leader&gt;sg | Telescope live_grep                    |
| &lt;leader&gt;sb | Telescope buffers                      |
| &lt;leader&gt;sf | Telescope find_files                   |
| &lt;leader&gt;sd | Telescope diagnostics                  |
| &lt;leader&gt;sh | Telescope help_tags                    |
| &lt;leader&gt;su | Telescope git_status                   |
| &lt;leader&gt;s. | Telescope resume                       |
| &lt;C-x&gt;      | Open selected file in horizontal split |
| &lt;C-v&gt;      | Open selected file in vertical split   |
| &lt;C-t&gt;      | Open file in a new tab                 |

# Useful Commands

- Check which filetype the current file has (LSP troubleshooting): `:set filetype?`
- Check which LSP is attached to the current buffer: `che vim.lsp`

## ⚡ Requirements

- Neovim >= 0.5.0

## 📦 Installation

Install the theme with your preferred package manager:

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'joaom00/neovim'
```

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'joaom00/neovim', { 'branch': 'main' }
```

## 🚀 Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme omni
```

```lua
-- Lua
vim.cmd[[colorscheme omni]]
```

To enable the `Omni` theme for `Lualine`, simply specify it in your lualine settings:

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'omni'
    -- ... your lualine config
  }
}
```

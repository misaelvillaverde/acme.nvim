# Acme.nvim

A Neovim colorscheme inspired by the classic Acme text editor, ported from Helix's acme theme.

## Features

- Light, clean aesthetic inspired by the original Acme editor
- Optimized for readability with high contrast
- Full support for Treesitter syntax highlighting
- LSP diagnostic integration
- Built with [lush.nvim](https://github.com/rktjmp/lush.nvim)

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'misaelvillaverde/acme.nvim',
  dependencies = 'rktjmp/lush.nvim',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'acme'
    vim.cmd 'set background=light'
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'misaelvillaverde/acme.nvim',
  requires = 'rktjmp/lush.nvim',
  config = function()
    vim.cmd.colorscheme 'acme'
    vim.cmd 'set background=light'
  end
}
```

### Manual installation

Clone the repository into your Neovim configuration directory:

```bash
git clone https://github.com/misaelvillaverde/acme.nvim ~/.config/nvim/pack/plugins/start/acme.nvim
```

## Usage

Apply the colorscheme:

```lua
vim.cmd.colorscheme 'acme'
vim.cmd 'set background=light'
```

## Color Palette

- **Background**: `#ffffea` (light cream)
- **Foreground**: `#000000` (black)
- **Selection**: `#eeee9e` (yellow highlight)
- **Cursor**: `#444444` (dark gray)
- **Comments**: `#777777` (gray)
- **Strings**: `#065905` (green)
- **Constants**: `#a0342f` (red)
- **Keywords**: `#000000` (black, bold)
- **Functions**: `#000000` (black)
- **Types**: `#000000` (black, bold)
- **Special**: `#f0ad4e` (orange)

## Related Projects

- [Helix Acme Theme](https://github.com/helix-editor/helix/blob/master/runtime/themes/acme.toml) - The original theme this is based on
- [Acme Editor](https://en.wikipedia.org/wiki/Acme_(text_editor)) - The inspiration for the color scheme

## License

MIT License - see [LICENSE](LICENSE) file for details.
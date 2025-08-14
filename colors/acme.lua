-- Acme colorscheme for Neovim
-- Port of Helix's acme theme

vim.opt.termguicolors = true
vim.g.colors_name = "acme"

-- Load the theme
package.loaded['lush_theme.acme'] = nil
require('lush')(require('lush_theme.acme'))
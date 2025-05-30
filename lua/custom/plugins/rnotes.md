# R environment for Nvim

## R packages to install

install.packages(c("languageserver", "jsonlite"))
install.packages(c("styler", "lintr", "devtools"))
remotes::install_github("httpgd")

## System wide packages

### System wide pip with isolated environment to bypass Arch restriction
sudo pacman -Syu pipx

### Python terminal emulator REPL for R
pipx install radian && pipx ensurepath


## neovim packages/config

### custom/plugins/init.lua

return {
  require("custom.plugins.r"),
  -- other plugin files
}

### custom/r.lua

return {
  -- R Language Server
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        r_language_server = {
          settings = {
            r = {
              lsp = {
                rich_documentation = true
              }
            }
          }
        }
      },
    },
  },

  -- Completion Sources (if not already handled globally)
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/cmp-nvim-lua' },
  { 'hrsh7th/cmp-nvim-lsp-signature-help' },
  { 'L3MON4D3/LuaSnip' },
  { 'saadparwaiz1/cmp_luasnip' },

  -- Interactive R support
  {
    'jalvesaq/Nvim-R',
    ft = { 'r', 'rmd' },
    init = function()
      vim.g.R_assign = 0
      vim.g.R_app = 'radian'
      vim.g.R_hl_term = 0
      vim.g.R_args = { '--quiet', '--no-save' }
    end,
  },
}

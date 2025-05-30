return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        pyright = {},
        bashls = {},
        r_language_server = {
          settings = {
            r = {
              lsp = {
                rich_documentation = true,
              },
            },
          },
        },
      },
    },
  },
}

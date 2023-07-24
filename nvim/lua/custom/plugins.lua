local plugins = {
  {
    'voldikss/vim-floaterm',
    lazy = false,
  },
  {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "rust-analyzer",
        "clangd",
      },
    },
  },
}
return plugins

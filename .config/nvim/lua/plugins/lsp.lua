return {
  -- Plugin management via Mason for easy LSP installation
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ensure_installed = {},
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {

    "neovim/nvim-lspconfig",
  },
  {

    "mfussenegger/nvim-dap",
  },
  {

    "rcarriga/nvim-dap-ui",
  },
  {

    -- "mfussenegger/nvim-lint",
    -- "jose-elias-alvarez/null-ls.nvim",
    "nvimtools/none-ls.nvim",

    -- "mhartington/formatter.nvim",
  },
}

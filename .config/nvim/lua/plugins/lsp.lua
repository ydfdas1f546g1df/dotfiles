return {
  -- Plugin management via Mason for easy LSP installation
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason LSP Config to integrate LSP servers with Neovim
  {
    "williamboman/mason-lspconfig.nvim",
    requires = {
      "neovim/nvim-lspconfig", -- Depend on nvim-lspconfig
    },
    config = function()
      require("mason-lspconfig").setup({
        -- Auto-install these LSP servers
        --ensure_installed = { "asm-lsp" },
      })
    end,
  },

  -- Configuration for the ASM LSP server
  {
    "neovim/nvim-lspconfig",
    config = function()
      --require("lspconfig")["asm-lsp"].setup({
      --  cmd = { "asm-lsp" }, -- Command to start the ASM LSP server
      --  filetypes = { "asm", "s", "S" }, -- File types to trigger ASM LSP
      --})
    end,
  },
}

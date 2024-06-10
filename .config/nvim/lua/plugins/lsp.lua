return {
  -- Plugin management via Mason for easy LSP installation
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "haskell-language-server",
        "haskell-debug-adapter",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {

    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        hls = function()
          return true
        end,
      },
    },
  },
  {

    "mfussenegger/nvim-dap",
  },
  {

    "rcarriga/nvim-dap-ui",
  },
  {
    "mrcjkb/haskell-tools.nvim",
    version = "^3", -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    "neotest-haskell",
  },
  {
    "haskell-snippets.nvim",
  },
  {
    "LuaSnip",
  },
  { "telescope.nvim" },
  { "nvim-dap" },
  { "neotest" },
}

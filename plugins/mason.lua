-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "volar",
        "ansiblels",
        "bashls",
        "cssls",
        "tailwindcss",
        "html",
        "intelephense",
        "jsonls",
        "lua_ls",
        "marksman",
        "sqlls",
        "emmet_ls",
        "eslint",
        "tsserver",
        "yamlls",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "prettier", "stylua" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "php-debug-adapter",
      },
    },
  },
}

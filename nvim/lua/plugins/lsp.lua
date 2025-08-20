return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      -- Setup cmp with lsp source
      require("cmp").setup({
        sources = {
          { name = "nvim_lsp" },
        },
      })

      -- Advertise cmp capabilities to LSP
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Example: clangd setup
      require("lspconfig").clangd.setup({
        capabilities = capabilities,
      })

      -- Sign column always visible
      vim.opt.signcolumn = "yes"

      -- Set up LSP keybindings when LSP attaches
      vim.api.nvim_create_autocmd("LspAttach", {
        desc = "LSP actions",
        callback = function(event)
          local opts = { buffer = event.buf }
        end,
      })
    end,
  },
}


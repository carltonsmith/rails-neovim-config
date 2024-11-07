return {
  -- null-ls setup with RuboCop as a formatter
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.rubocop, -- Set RuboCop as the formatter
        },
      })

      -- Auto-format Ruby files on save
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.rb",
        callback = function()
          vim.lsp.buf.format({ async = false }) -- Format before saving
        end,
      })
    end,
  },
}

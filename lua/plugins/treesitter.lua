return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        ensure_installed = { "ruby", "typescript", "javascript", "html", "css", "scss", "yaml", "php", "rust", "go", "java", "lua", "json", "graphql", "python", "c", "bash", "dockerfile", "vim" },
        highlight = { enable = true },
        indent = { enable = false },
      })
    end
  }
}

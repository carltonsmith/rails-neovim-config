return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        -- Optional configuration here
        direction = "horizontal",      -- You can set this to "vertical", "float", etc.
        size = 15,
      })
    end,
  },
}

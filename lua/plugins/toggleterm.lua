return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        -- Optional configuration here
        open_mapping = [[<leader>t]],  -- Shortcut to toggle terminal
        direction = "horizontal",      -- You can set this to "vertical", "float", etc.
        size = 15,
      })
    end,
  },
}

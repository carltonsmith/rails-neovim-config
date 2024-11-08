return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
      vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gu", ":Gitsigns undo_stage_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", {})
      vim.keymap.set("n", "]h", ":Gitsigns next_hunk<CR>", {})
      vim.keymap.set("n", "[h", ":Gitsigns prev_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gd", ":Gitsigns toggle_deleted<CR>", {})
      vim.keymap.set("n", "<leader>gd", ":Gitsigns diffthis<CR>", {})
    end,
  },
}

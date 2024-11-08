return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function() -- This is the function that runs, AFTER loading
    local wk = require("which-key")
    wk.setup({
      preset = "modern",
      win = {
        border = "single",
      },
    })
    wk.add({
      { "<leader>c", group = "Code" },
      { "<leader>d", group = "Diagnostics" },
      { "<leader>g", group = "Git" },
      { "<leader>h", group = "Harpoon" },
      { "<leader>r", group = "Run" },
      { "<leader>s", group = "Search" },
      { "<leader>t", group = "Toggle" },
      { "<leader>w", group = "Workspace" },
    })
    -- Registering keybindings with descriptions
    wk.register({
      c = { name = "Code", f = { "<cmd>lua vim.lsp.buf.format()<CR>", "Format File" } },
      d = {
        name = "Diagnostics",
        l = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Line Diagnostics" },
        n = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Next Diagnostic" },
        p = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "Previous Diagnostic" },
      },
      g = {
        name = "Git",
        p = { "<cmd>Gitsigns preview_hunk<CR>", "Preview Hunk" },
        s = { "<cmd>Gitsigns stage_hunk<CR>", "Stage Hunk" },
        u = { "<cmd>Gitsigns undo_stage_hunk<CR>", "Undo Stage Hunk" },
      },
      h = { name = "Harpoon" }, -- Placeholder if Harpoon keymaps are added later
      s = { name = "Search", g = { "<cmd>Telescope live_grep<CR>", "Live Grep" } },
      t = { name = "Toggle", n = { "<cmd>set relativenumber!<CR>", "Toggle Relative Numbers" } },
    }, { prefix = "<leader>" })
  end,
}

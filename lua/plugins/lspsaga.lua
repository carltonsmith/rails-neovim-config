return {
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",  -- Load when LSP attaches to buffer
    config = function()
      require("lspsaga").setup({
        ui = {
          diagnostic = "",  -- Icon for diagnostics (warnings, errors)
          code_action = "💡", -- Icon for code actions
        },
        lightbulb = {
          enable = true,
          sign = true,          -- Show lightbulb as a sign in the sign column
          sign_priority = 10,
          virtual_text = false,  -- Turn off virtual text if you prefer
        },
        code_action_keys = {
          quit = "<esc>",  -- Press <esc> to quit code actions
          exec = "<CR>",   -- Press <CR> to execute code actions
        },
        finder = {
          max_height = 0.5,    -- Adjust finder window height
          min_width = 20,
          force_floating = false, -- Force floating window for finder
        },
        symbol_in_winbar = {
          enable = true,
          separator = "  ",    -- Custom separator between symbols
          show_file = true,     -- Show file name in the winbar
        },
      })
    end,
  },
}

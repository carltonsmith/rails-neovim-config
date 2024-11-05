return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      options = {
        update_focused_file = {
          enable = true,
          update_cwd = true,
        },
        renderer = {
          root_folder_modifier = ':t',
          icons = {
            show = {
              dotfiles = true, -- show hidden files
            },
          },
        },
      },
    }
  end,
}

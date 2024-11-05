return {
  'akinsho/bufferline.nvim',
  lazy = false,
  config = function()
    require('bufferline').setup {
      options = {
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer', -- Optional title for the nvim-tree sidebar
            highlight = 'Directory',
            text_align = 'left',
          },
        },
      },
    }
  end,
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
}

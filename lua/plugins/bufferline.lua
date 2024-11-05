return {
 'akinsho/bufferline.nvim',
 lazy = false,
 config = function()
   require('bufferline').setup {
     options = {
       offsets = {{
         filetype = 'NvimTree',
         text = 'File Explorer',
         highlight = 'Directory',
         text_align = 'left',
       }},
     },
   }
 end,
 version = "*",
 requires = 'nvim-tree/nvim-web-devicons',
}

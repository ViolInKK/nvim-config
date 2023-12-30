local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'sainnhe/sonokai'

Plug 'nvim-lualine/lualine.nvim'

Plug 'nvim-tree/nvim-web-devicons'

Plug 'nvim-tree/nvim-tree.lua'

vim.call('plug#end')

require('lualine').setup()
require('nvim-tree').setup({
    view = {
        width = 25,
    }
})


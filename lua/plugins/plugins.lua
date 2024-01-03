local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'sainnhe/sonokai'

Plug 'nvim-lualine/lualine.nvim'

Plug 'nvim-tree/nvim-web-devicons'

Plug 'nvim-tree/nvim-tree.lua'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'hrsh7th/cmp-buffer'

Plug 'hrsh7th/cmp-path'

Plug 'hrsh7th/cmp-cmdline'

Plug 'hrsh7th/cmp-vsnip'

Plug 'hrsh7th/vim-vsnip'

Plug 'wbthomason/packer.nvim'

Plug 'j-hui/fidget.nvim'

Plug 'simrat39/rust-tools.nvim'

vim.call('plug#end')

--local lspconfig = require('lspconfig')

--lspconfig.rust_analyzer.setup({})

--require('fidget').setup()
require('lualine').setup()
require('nvim-tree').setup({
    view = {
        width = 25,
    }
})

local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- colorscheme
Plug 'sainnhe/sonokai'

-- status bar
Plug 'nvim-lualine/lualine.nvim'

-- icons
Plug 'nvim-tree/nvim-web-devicons'

--file explorer
Plug 'nvim-tree/nvim-tree.lua'

--lsp config
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
-- lsp progress status
Plug 'j-hui/fidget.nvim'
-- lsp for rust_analyzer
Plug 'simrat39/rust-tools.nvim'

Plug 'wbthomason/packer.nvim'
-- automaticly close {}, "", etc.
Plug 'm4xshen/autoclose.nvim'

Plug 'nvim-lua/plenary.nvim'

-- fuzzy finder
Plug 'nvim-telescope/telescope.nvim'

-- visit links under cursor
Plug 'xiyaowong/link-visitor.nvim'

-- tabs bar
Plug 'romgrk/barbar.nvim'

-- git interface
Plug 'kdheepak/lazygit.nvim'

vim.call('plug#end')

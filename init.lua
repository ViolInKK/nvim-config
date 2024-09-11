require("plugins.plugins")
require("core.lsp")
require("core.options")
require("core.keybinds")
require("core.colorscheme")

require('lualine').setup()
require('nvim-tree').setup({
    view = {
        preserve_window_proportions = true,
        width = 25,
    }
})
require('barbar').setup({
    animation = false,
    exclude_name = {'bash'},
})
--require('autoclose').setup()
require('link-visitor').setup()

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- Disable autocomment on new line.

-- The reason we do it like this instead of setting up option in config
-- Is because some files are sourced after init.lua overwriting this value.

-- https://neovim.discourse.group/t/options-formatoptions-not-working-when-put-in-init-lua/3746/2

vim.cmd([[autocmd BufEnter * set formatoptions-=cro]])

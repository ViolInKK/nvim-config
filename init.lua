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

-- Disable autocomment on new line.

-- The reason we do it like this instead of setting up option in config
-- Is because some files are sourced after init.lua overwriting this value.

-- https://neovim.discourse.group/t/options-formatoptions-not-working-when-put-in-init-lua/3746/2

vim.cmd([[autocmd BufEnter * set formatoptions-=cro]])

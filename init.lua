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
    animation = false
})
require('autoclose').setup()
require('link-visitor').setup()

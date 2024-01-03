require("plugins.plugins")
require("core.lsp")
require("core.options")
require("core.keybinds")
require("core.colorscheme")

require('lualine').setup()
require('nvim-tree').setup({
    view = {
        width = 25,
    }
})


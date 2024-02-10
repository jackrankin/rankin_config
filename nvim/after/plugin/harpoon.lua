local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

require("harpoon").setup({
    tabline = true,
    tabline_prefix = "   ",
    tabline_suffix = "   ",
})

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-]>", function() ui.nav_next() end)
vim.keymap.set("n", "<C-[>", function() ui.nav_prev() end)


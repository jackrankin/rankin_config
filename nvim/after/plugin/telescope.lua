local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- nnoremap <leader>ff :lua require("telescope.builtin").find_files{ find_command = { "rg", "--files", "--hidden", "--follow"} }

vim.keymap.set('n', '<leader>fg', function()
    builtin.grep_string({search = vim.fn.input("rg > ")});
end)


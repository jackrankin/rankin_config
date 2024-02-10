require("johm.remap")
require("johm.plugins")

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.scrolloff = 8

vim.cmd("set signcolumn=no")
vim.cmd("set rnu")
vim.cmd("set number")
vim.cmd("set noswapfile")
vim.cmd("colo rose-pine")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

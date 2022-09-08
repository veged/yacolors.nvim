local background = vim.opt.background:get()

return require('lualine.themes.yacolors_' .. background)

local opt = vim.opt
local g = vim.g

-- Opciones generales
opt.title = true
opt.number = true
opt.encoding = "utf-8"
opt.mouse = "a"
opt.syntax = "on"
opt.backup = false
opt.showcmd = true
opt.termguicolors = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.shiftround = true
opt.expandtab = true
opt.spelllang = { "es", "en" }
opt.filetype = "on"
opt.showmode = false

-- opt.cursorline = true
-- opt.cursorcolumn = true
-- opt.colorcolumn = "80"

-- Líder (líder global es una variable, no una opción)
g.mapleader = ","

-- NERDTree (si decides usarlo de nuevo, aunque hay opciones mejores)
g.NERDTreeShowHidden = 1

-- Detección de archivos .ejs como HTML
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.ejs",
  command = "set filetype=html",
})

opt.updatetime = 300
opt.signcolumn = "yes"

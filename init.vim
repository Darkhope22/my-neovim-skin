set title
set number
set encoding=utf-8
set filetype=on
set mouse=a
set cursorline
set cursorcolumn
set colorcolumn=80
syntax on
set nobackup
set showcmd
set termguicolors
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab

set spelllang=es,en

au BufNewFile,BufRead *.ejs set filetype=html

let mapleader = ","
let NERDTreeShowHidden=1

" Plugins
call plug#begin('~/.vim/plugged')
" Plug 'ayu-theme/ayu-vim'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'itchyny/lightline.vim'
Plug 'm4xshen/autoclose.nvim'
Plug 'numToStr/FTerm.nvim'
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-dadbod'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
call plug#end()
"let ayucolor="dark"
" colorscheme ayu

" Lightline & moonfly
let g:lightline = { 'colorscheme' : 'moonfly' }
colorscheme moonfly

lua<<EOF
local lspconfig=require("lspconfig")

lspconfig.ts_ls.setup{} -- javascript
-- lspconfig.bashls.setup{} -- bash
lspconfig.eslint.setup{
  function(client, bufnr)
      vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
      end,
  } -- eslint

-- Autoclose
require("autoclose").setup()

-- FTerm
require'FTerm'.setup({
  cmd = 'pwsh',

})

-- gitsigns
require('gitsigns').setup()

vim.keymap.set('n', '<C-p>', '<CMD>lua require("FTerm").toggle()<CR>')

vim.keymap.set('t', '<C-t>', '<C-\\><C-t><CMD>lua require("FTerm").toggle()<CR>')

-- NERDTREE
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Configuración mínima para Neovim

-- Desactivar backups para evitar conflictos
vim.opt.backup = false
vim.opt.writebackup = false

-- Reduce el tiempo de actualización
vim.opt.updatetime = 300

-- Siempre mostrar la columna de diagnóstico
vim.opt.signcolumn = "yes"

-- Mapeos básicos estilo VS Code
vim.keymap.set('n', '<C-c>', '"+y')  -- Copiar al portapapeles
vim.keymap.set('n', '<C-x>', '"+d')  -- Cortar al portapapeles
vim.keymap.set('n', '<C-v>', '"+p')  -- Pegar desde el portapapeles
vim.keymap.set('n', '<C-a>', 'ggVG') -- Seleccionar todo

-- Autocompletado básico con `ctrl + space`
vim.api.nvim_set_keymap('i', '<C-Space>', 'coc#refresh()', { noremap = true, silent = true, expr = true })

-- Mostrar documentación al presionar `K`
vim.api.nvim_set_keymap('n', 'K', ':call CocAction("doHover")<CR>', { noremap = true, silent = true })

-- Configuración básica de CoC.nvim
vim.cmd([[
  " Usa Tab para navegar el menú de completado
  inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
  inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

  " Diagnósticos y navegación
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)
]])

-- Usa `:Format` para formatear el buffer
vim.cmd([[command! -nargs=0 Format :call CocAction('format')]])

EOF

" Diffview commands
nnoremap <leader>dv :DiffviewOpen<CR> 
nnoremap <leader>dc :DiffviewClose<CR>
nnoremap <leader>db :DiffviewToggleFiles<CR>

" Configuración para vim-dadbod-ui
let g:db_ui_save_location = '~/.config/nvim/db_ui'

" Mapas útiles para abrir la interfaz de DBUI
nnoremap <leader>du :DBUIToggle<CR>
nnoremap <leader>df :DBUIFindBuffer<CR>
nnoremap <leader>dr :DBUIRenameBuffer<CR>
nnoremap <leader>dl :DBUILastQueryInfo<CR>

lua<<EOF

-- Atajos personalizados
vim.keymap.set('n', '<C-p>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-t>', '<C-\\><C-t><CMD>lua require("FTerm").toggle()<CR>')

-- NERDTREE
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Desactivar backups para evitar conflictos
vim.opt.backup = false
vim.opt.writebackup = false

-- Reduce el tiempo de actualización
vim.opt.updatetime = 300

-- Siempre mostrar la columna de diagnóstico
vim.opt.signcolumn = "yes"

-- Mapeos básicos estilo VS Code
-- Modo normal
vim.keymap.set('n', '<C-c>', '"+y')  -- Copiar al portapapeles
vim.keymap.set('n', '<C-x>', '"+d')  -- Cortar al portapapeles
vim.keymap.set('n', '<C-v>', '"+p')  -- Pegar desde el portapapeles
vim.keymap.set('n', '<C-a>', 'ggVG') -- Seleccionar todo
-- Modo visual
vim.keymap.set('v', '<C-c>', '"+y')
vim.keymap.set('v', '<C-x>', '"+d')
vim.keymap.set('v', '<C-v>', '"+p')

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

-- Mapeo de flechas principales con Shift para selección
vim.api.nvim_set_keymap('n', '<S-Up>', 'v<Up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Down>', 'v<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Left>', 'v<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Right>', 'v<Right>', { noremap = true, silent = true })

-- Mapeo de flechas del teclado numérico con Shift para selección
vim.api.nvim_set_keymap('n', '<S-kUp>', 'v<Up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-kDown>', 'v<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-kLeft>', 'v<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-kRight>', 'v<Right>', { noremap = true, silent = true })

-- Modo visual: seguir expandiendo selección con Shift y flechas
vim.api.nvim_set_keymap('v', '<S-Up>', '<Up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Down>', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Left>', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Right>', '<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-kUp>', '<Up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-kDown>', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-kLeft>', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-kRight>', '<Right>', { noremap = true, silent = true })

EOF


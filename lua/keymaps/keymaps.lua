vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Abrir árbol de archivos" })
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Terminal flotante con FTerm
map('n', '<C-p>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<C-p>', '<CMD>lua require("FTerm").toggle()<CR>', opts)

-- Árbol de archivos con nvim-tree (reemplazo de NERDTree)
map('n', '<C-n>', '<CMD>NvimTreeToggle<CR>', opts)

-- Copiar/Cortar/Pegar estilo VS Code
-- Modo normal
map('n', '<C-c>', '"+y', opts)
map('n', '<C-x>', '"+d', opts)
map('n', '<C-v>', '"+p', opts)
map('n', '<C-a>', 'ggVG', opts)
-- Modo visual
map('v', '<C-c>', '"+y', opts)
map('v', '<C-x>', '"+d', opts)
map('v', '<C-v>', '"+p', opts)

-- Mostrar documentación (LSP)
map('n', 'K', vim.lsp.buf.hover, opts)

-- Formatear con LSP
map('n', '<leader>f', function() vim.lsp.buf.format() end, opts)

-- Diagnósticos con LSP
map('n', '[g', vim.diagnostic.goto_prev, opts)
map('n', ']g', vim.diagnostic.goto_next, opts)

-- Shift + Flechas (modo normal) para selección rápida
map('n', '<S-Up>', 'v<Up>', opts)
map('n', '<S-Down>', 'v<Down>', opts)
map('n', '<S-Left>', 'v<Left>', opts)
map('n', '<S-Right>', 'v<Right>', opts)

-- Shift + Keypad
map('n', '<S-kUp>', 'v<Up>', opts)
map('n', '<S-kDown>', 'v<Down>', opts)
map('n', '<S-kLeft>', 'v<Left>', opts)
map('n', '<S-kRight>', 'v<Right>', opts)

-- Visual mode - seguir expandiendo selección
map('v', '<S-Up>', '<Up>', opts)
map('v', '<S-Down>', '<Down>', opts)
map('v', '<S-Left>', '<Left>', opts)
map('v', '<S-Right>', '<Right>', opts)
map('v', '<S-kUp>', '<Up>', opts)
map('v', '<S-kDown>', '<Down>', opts)
map('v', '<S-kLeft>', '<Left>', opts)
map('v', '<S-kRight>', '<Right>', opts)




lua<<EOF

-- LSP
-- Init
local lspconfig=require("lspconfig")

-- Servers
-- Javascript
lspconfig.ts_ls.setup{}
-- Go
-- lspconfig.gopls.setup{}
-- Python
lspconfig.pyright.setup{}
-- Bash
lspconfig.bashls.setup{}
-- Eslint
lspconfig.eslint.setup{
  function(client, bufnr)
      vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
      end,
  }
-- Tailwindcss
lspconfig.tailwindcss.setup({
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
})
-- Astrojs
lspconfig.astro.setup{}

-- PHP
lspconfig.intelephense.setup{}

-- Diffview
require("diffview").setup({
  use_icons = false,
  view = {
    merge_tool = {
      layout = "diff3_vertical",
    },
    default = {
      layout = "diff2_vertical"
   }
  }
})

-- Autoclose
require("autoclose").setup()

-- FTerm
require'FTerm'.setup({
  cmd = 'pwsh',

})

-- gitsigns
require('gitsigns').setup()

EOF

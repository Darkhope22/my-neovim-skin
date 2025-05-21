lua<<EOF

-- LSP
local lsp = require('lsp-zero').preset({})
local lspconfig = require('lspconfig')

lsp.setup()

-- Servers
lspconfig.ts_ls.setup{}
lspconfig.pyright.setup{}
lspconfig.bashls.setup{}
lspconfig.astro.setup{}

lspconfig.eslint.setup{
  function(client, bufnr)
      vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
      end,
  }

lspconfig.tailwindcss.setup({
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
})

EOF

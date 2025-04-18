local lspconfig = require("lspconfig")
local cmp = require("cmp")

-- Configurar nvim-cmp
cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }, {
    { name = "buffer" },
    { name = "path" },
  }),
})

-- Configurar Mason
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "ts_ls",
    "html",
    "cssls",
    "eslint",
    "pyright",
    "intelephense",
    "lua_ls",
    "clangd"
  },
  automatic_installation = true,
})

-- Configuracion basica de LSP
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- configuracion mason y lua_ls
require("mason-lspconfig").setup_handlers({
  function(server_name)
    local opts = {
      capabilities = capabilities,
    }

    -- Configuracion especial para Lua
    if server_name == "lua_ls" then
      opts.settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = {
            enable = false,
          },
        },
      }
    end

    lspconfig[server_name].setup(opts)
  end,
})

-- Mostrar errores flotantes al pasar el cursor
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focusable = false,
      border = "rounded",
      source = "always",
      prefix = "🔍 ",
    })
  end
})

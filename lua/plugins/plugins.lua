return {
	-- LSP
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason.nvim", build = ":MasonUpdate" },
	{ "williamboman/mason-lspconfig.nvim" },

	-- Autocompletado
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "L3MON4D3/LuaSnip" },

	-- Snippets opcionales
	{ "rafamadriz/friendly-snippets" },

	-- Temas
	{ "EdenEast/nightfox.nvim" },
  { "projekt0n/github-nvim-theme" },

  -- arbol de ficheros
  { 
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
      require("nvim-tree").setup({
        view = {
          side = "right"
        },
        renderer = {
          icons = {
            show = {
              folder = true,
              file = true,
              folder_arrow = true,
            }
          }
        }
      })
    end,
  },
  -- Buscador
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      require("telescope").setup()
    end,
  },
  -- linea de estado
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
      require("lualine").setup({
        options = { theme = "auto" }
      })
    end,
  },
  -- autocierre de parentesis
  {
    "m4xshen/autoclose.nvim",
    config = function ()
      require("autoclose").setup()
    end,
  },
  -- terminal flotante
  {
    "numToStr/FTerm.nvim",
    config = function()
      require("FTerm").setup({
        cmd = "zsh"
      })
    end,
  },
  -- LENGUAJES
  -- emmet
  {
    "mattn/emmet-vim",
    ft = {
      "html",
      "css",
      "javascript",
      "typescriptreact",
      "javascriptreact",
    }
  },
  -- resaltado de sintaxis
  { "pangloss/vim-javascript" },
  { "maxmellon/vim-jsx-pretty" },
  { "hail2u/vim-css3-syntax" },
  { "plasticboy/vim-markdown" },
  -- git 
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },
  -- Diffview (git diff)
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}

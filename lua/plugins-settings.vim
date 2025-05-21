lua<<EOF

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

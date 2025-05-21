" Plugins
call plug#begin('~/.vim/plugged')

" Theme
Plug 'daltonmenezes/aura-theme', { 'rtp': 'packages/neovim' }

" LSP Zero
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

" LSP Dependencies
Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Sidebar
Plug 'preservim/nerdtree'
" Sidebar icons
Plug 'ryanoasis/vim-devicons'

" Searching
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}

" Status bar
Plug 'itchyny/lightline.vim'

" Bracket autoclose
Plug 'm4xshen/autoclose.nvim'

" Floating terminal
Plug 'numToStr/FTerm.nvim'

" Css plugins
Plug 'hail2u/vim-css3-syntax'

" Javascript/ JSX plugins
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'

" Html/markdown plugins
Plug 'mattn/emmet-vim'
Plug 'plasticboy/vim-markdown'

" Lua Async library
Plug 'nvim-lua/plenary.nvim'

" Git plugins
Plug 'lewis6991/gitsigns.nvim'
Plug 'sindrets/diffview.nvim'

call plug#end()

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git", lazypath
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins.plugins")

-- theme config
require("github-theme").setup({
  options = {
    styles = {
      comments = "italic",
      functions = "bold",
      keywords = "italic",
    },
    darken = {
      floats = true,
      sidebars = {
        enable = true,
        list = { "qf", "help", "terminal" }
      }
    }
  }
})

local ok, _ = vim.cmd("colorscheme github_dark")
if not ok then
  vim.notify("Error al cargar el colorscheme github_dark")
end

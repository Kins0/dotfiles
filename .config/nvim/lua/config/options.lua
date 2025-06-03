-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.maplocalleader = ","

vim.g.vimtex_view_general_viewer = "zathura"
vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
vim.g.vimtex_view_method = "zathura"

vim.g.vimtex_syntax_conceal_disable = 1

vim.g.python3_host_prog = "~/.config/nvim/venv/bin/python"
vim.g.lazyvim_python_lsp = "basedpyright"

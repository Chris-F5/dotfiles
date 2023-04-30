--             _
--  _ ____   _(_)_ __ ___  _ __ ___
-- | '_ \ \ / / | '_ ` _ \| '__/ __|
-- | | | \ V /| | | | | | | | | (__
-- |_| |_|\_/ |_|_| |_| |_|_|  \___|
--

-- colorscheme
-- https://github.com/EvitanRelta/vim-colorschemes
vim.cmd("colorscheme onedark")

-- dissable mouse
vim.cmd("set mouse=")

-- status line always appears only at bottom
vim.opt.laststatus = 3
vim.cmd("highlight WinSeparator guibg=None")
-- dont show vim mode in command line
vim.cmd("set noshowmode")
-- status line. todo: dynamic status line (calls lua function).
vim.g.modestring = {
  ["n"] = "Normal",
  ["v"] = "Visual",
  ["V"] = "Visual Line",
  [vim.api.nvim_replace_termcodes("<C-V>", true, true, true)] = "Visual Block",
  ["i"] = "Insert",
  ["R"] = "Replace",
  ["Rv"] = "Visual Replace",
  ["c"] = "Command"
}
vim.opt.statusline = "%#Visual# %{toupper(g:modestring[mode()])} %#StatusLine# %f %h%r%m %= 0x%B o:%o l:%L    %Y %p%% %#Visual# %l:%c "
vim.g.mapleader = " "

-- open netrw
vim.keymap.set("n", "<leader>f", vim.cmd.Ex)

-- use system clipboard
vim.cmd("set clipboard+=unnamedplus")

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- 80 character column
vim.cmd("set colorcolumn=80");

-- indent size
-- use `set shiftwidth = 4` to change to 4 spaces
vim.opt.tabstop = 8
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.smarttab = true

-- dissable STUPID 'recommended' style
vim.cmd("let g:python_recommended_style = 0")

-- auto indent
vim.opt.autoindent = true
vim.opt.smartindent = false
vim.opt.cindent = false
vim.opt.indentexpr = ""
-- dont add comment sequence if I add a newline on comment
vim.cmd("set formatoptions-=ro")

-- line wrap
vim.opt.wrap = false

-- disable search wrap
vim.opt.wrapscan = false

-- special characters
vim.cmd("set list")
vim.cmd("set listchars=trail:.,tab:-->")

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.clipboard += "unnamedplus"
-- vim.opt.scrolloff = 8

-- paste to overwrite selection and keep paste buffer content
vim.keymap.set("x", "<leader>p", "\"_dP")

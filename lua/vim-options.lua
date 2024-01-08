vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set autoindent")
vim.cmd("set number")
vim.cmd("set cursorline")
vim.cmd("set wrap")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set hlsearch")
vim.cmd("set ttyfast")
vim.cmd("set noswapfile")
vim.cmd("set confirm")
vim.cmd("set wildignore+=/.git/*,*/build/**,.DS_Store")
vim.cmd("set splitbelow splitright")
vim.opt.fillchars = { eob = " " }
vim.g.mapleader = " "
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.opt.updatetime = 200
vim.opt.termguicolors = true


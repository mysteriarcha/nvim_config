vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.have_nerd_font = true
vim.cmd("let g:LanguageClient_serverCommands = {'r': ['R', '--slave', '-e', 'languageserver::run()']}")

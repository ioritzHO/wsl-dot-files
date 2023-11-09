vim.g.mapleader = ","
vim.opt.encoding = [[utf-8]]
vim.opt.showcmd = true    	-- display incomplete commands
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.background = dark
vim.opt.termguicolors = true

-- Clipboard
vim.opt.clipboard = unnamed     -- use system clipboard as default clipboard

-- Whitespace
vim.opt.wrap = false            -- don't wrap lines

vim.opt.tabstop = 4             -- tab is four spaces
vim.opt.shiftwidth = 4          -- shift is four spaces
vim.opt.expandtab = true        -- use spaces, not tabs
vim.opt.backspace = [[indent,eol,start]]    -- backspace through everything in insert mode

-- Searching
vim.opt.hlsearch = true          -- highlight matches
vim.opt.incsearch = true         -- incremental searching
vim.opt.ignorecase = true        -- searches are case insensitive...
vim.opt.smartcase = true         -- ... unless they contain at least one capital letter

vim.opt.wildmenu = true
vim.opt.wildmode = [[longest:full,full]]
vim.opt.wildignorecase = true    -- ignore case for dir and files

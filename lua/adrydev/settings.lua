local global = vim.g
local o = vim.opt
local c = vim.cmd

-- Editor globals
global.mapleader = " " -- Sets <Space> as leader

-- Editor commands
c("colorscheme habamax")

-- Editor options

o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.encoding = "UTF-8"
o.ruler = true
o.mouse = "a"
o.title = true
o.hidden = true
o.wildmenu = true
o.showcmd = false -- Set it off if the terminal is slow
o.showmatch = true
o.inccommand = "split"
o.splitright = true
o.splitbelow = true
o.termguicolors = true

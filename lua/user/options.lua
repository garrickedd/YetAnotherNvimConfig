local g, o, cmd, opt = vim.g, vim.o, vim.cmd, vim.opt

-- General
o.mouse = "a"
o.ruler = true
o.number = true
o.relativenumber = true
o.cursorline = true
o.virtualedit = "onemore" -- With This option you can move the cursor one character over the end
o.hlsearch = true -- highlight all matches on previous search pattern
o.ignorecase = true

o.splitbelow = true -- Default split below
o.splitright = true -- Default split right

o.showmatch = true

-- Files
o.hidden = true
-- if you had like noswapfile you should use o.swapfile = false
-- simular throughout for when you had `set noswapfile`
o.swapfile = false
o.backup = false
o.writebackup = false

-- Lower update time for CursorHold event
o.updatetime = 1000

-- Shada
o.shada = "!,'1000,<50,s10,h"

-- Tabs
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true -- converts tab to spaces

o.clipboard = "unnamedplus"
o.scrolloff = 10 -- Leave 10 rows when scrolling
o.emoji = true -- Use emojis
o.fileencoding = "utf-8" -- the encoding written to a file
o.smartindent = true
o.smartcase = true

o.signcolumn = "yes:1"

-- Colors
o.termguicolors = true -- Support 24bit colors

-- disable netrw at the very start of your init.lua
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Highlight yank'd text after yankin'
vim.api.nvim_create_augroup("YankHighlight", {})
vim.api.nvim_create_autocmd("TextYankPost", {
	group = "YankHighlight",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 100 })
	end,
})

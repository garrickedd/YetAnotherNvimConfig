M = {}

local Remap = require("plugins.configs.keymaps")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local api = vim.api

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
api.nvim_set_keymap("n", "<C-Up>", ":resize -2<CR>", opts)
api.nvim_set_keymap("n", "<C-Down>", ":resize +2<CR>", opts)
api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

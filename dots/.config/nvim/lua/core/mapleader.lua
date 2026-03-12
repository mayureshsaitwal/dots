-- [[ Basic Keymaps ]]

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local nmap = { noremap = true }

-- Shorten function name

--local keymap = vim.api.nvim_set_keymap
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

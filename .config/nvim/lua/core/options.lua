local options = {
	backup = false, -- creates a backup file
	breakindent = true, -- Enable break indent
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	cmdheight = 2, -- more space in the neovim command line for displaying messages
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, -- so that `` is visible in markdown files
	fileencoding = "utf-8", -- the encoding written to a file
	hlsearch = true, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	inccommand = "split", -- Preview substitutions live, as you type!
	-- list = true, -- sets neovim display whitespace
	-- listchars = { tab = "» ", trail = "·", nbsp = "␣" }, -- shows different symbols for whitespace
	mouse = "a", -- allow the mouse to be used in neovim
	pumheight = 10, -- pop up menu height
	showmode = true, -- we don't need to see things like -- INSERT -- anymore
	showtabline = 2, -- always show tabs
	signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	swapfile = false, -- creates a swapfile
	termguicolors = true, -- set term gui colors (most terminals support this)
	timeout = true,
	timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = true, -- enable persistent undo
	updatetime = 1000, -- faster completion (4000ms default)
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	expandtab = true, -- convert tabs to spaces
	shiftwidth = 2, -- the number of spaces inserted for each indentation
	tabstop = 2, -- insert 2 spaces for a tab
	cursorline = true, -- highlight the current line
	number = true, -- set numbered lines
	relativenumber = true, -- set relative numbered lines
	numberwidth = 4, -- set number column width to 2 {default 4}
	wrap = false, -- display lines as one long line
	scrolloff = 8, -- is one of my fav
	sidescrolloff = 8,
	modifiable = true,
	-- loaded_netrw = 1, -- disable netrw at the very start
	-- loaded_netrwPlugin = 1,
	-- nvim_tree_respect_buf_cwd = 1,
	-- guifont = "Cascadia Code:h12.0",               -- the font used in graphical neovim applications
}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end

local opt = vim.opt

opt.iskeyword:append("-") -- consider string-string as whole word

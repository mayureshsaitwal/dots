-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
	desc = "Remove Trailines",
	group = vim.api.nvim_create_augroup("MiniTrailspace", { clear = true }),
	callback = function()
		require("mini.trailspace").trim()
		require("mini.trailspace").trim_last_lines()
	end,
})

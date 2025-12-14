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

-- Auto insert mode when entering terminal buffer
vim.api.nvim_create_autocmd("TermEnter", {
	group = vim.api.nvim_create_augroup("Term-Insert", { clear = true }),
	callback = function()
		vim.cmd("startinsert!")
	end,
})
-- vim.api.nvim_create_autocmd({ "BufEnter", "TermOpen" }, {
-- 	desc = "Automatically inserts when terminal is focused",
-- 	pattern = "*",
-- 	callback = function()
-- 		if vim.api.nvim_buf_get_option(0, "buftype") == "terminal" then
-- 			vim.cmd(":startinsert")
-- 			-- vim.api.nvim_feedkeys("i", "n", true)
-- 		end
-- 	end,
-- })
-- -- vim.api.nvim_create_autocmd("BufWritePost", {
-- 	desc = "Remove Trailines",
-- 	group = vim.api.nvim_create_augroup("MiniTrailspace", { clear = true }),
-- 	callback = function()
-- 		require("mini.trailspace").trim()
-- 		require("mini.trailspace").trim_last_lines()
-- 	end,
-- })

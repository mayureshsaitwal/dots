return {
	"smoka7/hop.nvim",
	version = "*",
	config = function()
		-- you can configure Hop the way you like here; see :h hop-config
		require("hop").setup({
			keys = "etovxqpdygfblzhckisuran",
			multi_windows = true,
		})
		local hop = require("hop")
		local directions = require("hop.hint").HintDirection
		vim.keymap.set("", "f", function()
			-- require("hop").hint_words()
			hop.hint_char1({})
		end, { remap = true })
		-- vim.keymap.set("", "F", function()
		-- 	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
		-- end, { remap = true })
		-- vim.keymap.set("", "t", function()
		-- 	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
		-- end, { remap = true })
		-- vim.keymap.set("", "T", function()
		-- 	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
		-- end, { remap = true })
		-- vim.keymap.set("n", "<leader>hw", function()
		-- 	require("hop").hint_words()
		-- end, { desc = "Hop Words" })
		-- vim.keymap.set("n", "<leader>ha", function()
		-- 	require("hop").hint_anywhere()
		-- end, { desc = "Hop Words" })
		-- vim.keymap.set('n', '<leader>hc', function()
		--   require('hop').hint_char1()
		-- end, { desc = 'Hop 1 Characters' })
		-- vim.keymap.set('n', '<leader>hc', function()
		--   require('hop').hint_char2()
		-- end, { desc = 'Hop 2 Characters' })
		-- vim.keymap.set('n', '<leader>hl', function()
		--   require('hop').hint_lines()
		-- end, { desc = 'Hop Lines' })
		-- vim.keymap.set('n', '<leader>hls', function()
		--   require('hop').hint_lines_skip_whitespace()
		-- end, { desc = 'Hop Line Start' })
		-- vim.keymap.set('n', '<leader>hv', function()
		--   require('hop').hint_vertical()
		-- end, { desc = 'Hop Vertical' })
		-- vim.keymap.set('n', '<leader>hp', function()
		--   require('hop').hint_patterns()
		-- end, { desc = 'Hop Patterns' })
	end,
}

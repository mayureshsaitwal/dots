return {
	"nvim-pack/nvim-spectre",
	opts = {},
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', { "n", "i" }, desc = "Toggle Spectre" },
		{
			"<leader>sw",
			'<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
			{ "n", "i" },
			desc = "Search current word",
		},
		{ "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', { "n", "i" }, desc = "Search current word" },
		{
			"<leader>sp",
			'<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
			{ "n", "i" },
			desc = "Search on current file",
		},
	},
	config = function()
		-- require('spectre').setup()
		-- vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
		--   desc = 'Toggle Spectre',
		-- })
		-- vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
		--   desc = 'Search current word',
		-- })
		-- vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
		--   desc = 'Search current word',
		-- })
		-- vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
		--   desc = 'Search on current file',
		-- })
	end,
}

return {
	"akinsho/toggleterm.nvim",
	version = "*",
	start_in_insert = true,
	keys = {
		{ "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "ToggleTerm Terminal" },
	},
	config = function()
		require("toggleterm").setup()
		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode to normal mode" })
		vim.keymap.set("t", "<JK>", [[<C-\><C-n>]], { desc = "Exit terminal mode to normal mode" })
		-- local opts = { buffer = 0 }
		-- vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
		-- vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
		-- vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
		-- vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
		-- vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
		-- vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
		-- vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
	end,
}

return {
	{
		"chrisgrieser/nvim-scissors",
		event = "BufEnter",
		dependencies = "nvim-telescope/telescope.nvim", -- optional
		opts = {
			snippetDir = vim.fn.stdpath("config") .. "/snippets",
		},
		keys = {
			"<Leader>asa",
			"<Leader>ase",
		},
		config = function() end,
	},
}

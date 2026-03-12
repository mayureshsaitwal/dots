return {
	"famiu/bufdelete.nvim",
	event = "VeryLazy",
	-- enabled = false,
	keys = {
		{
			"<C-q>",
			"<cmd>lua require('bufdelete').bufdelete(0, true)<cr>",
			desc = "Delete Current Buffer",
		},
	},
}

return {
	"nvim-pack/nvim-spectre",
	opts = {},
	lazy = true,
	keys = {
		{ "<C-f>", '<cmd>lua require("spectre").toggle()<CR>', "Find and Replace" },
	},
}

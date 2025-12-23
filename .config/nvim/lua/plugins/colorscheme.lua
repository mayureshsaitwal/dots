return {
	-- "folke/tokyonight.nvim",
	"nyoom-engineering/oxocarbon.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- vim.cmd([[colorscheme tokyonight-night]])
		vim.cmd([[colorscheme oxocarbon]])
		vim.opt.background = "dark"
	end,
}

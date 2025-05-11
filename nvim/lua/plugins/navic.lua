return {
	{
		"SmiteshP/nvim-navic",
		event = { "CursorMoved", "BufWinEnter", "BufFilePost" },
		-- enabled = false,
		config = function()
			vim.api.nvim_set_hl(0, "NavicText", { link = "Winbar" })
			vim.api.nvim_set_hl(0, "NavicSeparator", { link = "Winbar" })

			require("nvim-navic").setup({
				lsp = {
					auto_attach = true,
					preference = { "phpactor" },
				},
				highlight = true,
				separator = "",
				depth_limit = 0,
				depth_limit_indicator = "..",
				safe_output = true,
			})
		end,
		dependencies = "neovim/nvim-lspconfig",
	},
}

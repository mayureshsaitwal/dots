return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = { automatic_enable = true },
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"basedpyright",
				"ts_ls",
				"rust-analyzer",
				"stylua",
				"lua-language-server",
				"vim-language-server",
			},
		},
	},
}

return {
	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {},
	},
	{
		"MaximilianLloyd/tw-values.nvim",
		keys = {
			{ "<leader>sv", "<cmd>TWValues<cr>", desc = "Show tailwind CSS values" },
		},
		opts = {
			border = "rounded", -- Valid window border style,
			show_unknown_classes = true, -- Shows the unknown classes popup
			focus_preview = true, -- Sets the preview as the current window
			copy_register = "", -- The register to copy values to,
			keymaps = {
				copy = "<C-y>", -- Normal mode keymap to copy the CSS values between {}
			},
		},
	},
	{
		"laytan/tailwind-sorter.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
		build = "cd formatter && npm ci && npm run build",
		opts = {
			on_save_enabled = true,
		},
	},
	{
		"axelvc/template-string.nvim",
		event = "InsertEnter",
		ft = {
			"javascript",
			"typescript",
			"javascriptreact",
			"typescriptreact",
		},
		config = true, -- run require("template-string").setup()
	},
	{
		"dmmulroy/tsc.nvim",
		cmd = { "TSC" },
		config = true,
	},

	{
		"dmmulroy/ts-error-translator.nvim",
		config = true,
	},
}

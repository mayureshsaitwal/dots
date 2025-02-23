return {
	{
		"adalessa/laravel.nvim",
		dependencies = {
			"tpope/vim-dotenv",
			"nvim-telescope/telescope.nvim",
			"MunifTanjim/nui.nvim",
			"kevinhwang91/promise-async",
		},
		cmd = { "Laravel" },
		keys = {
			{ "<leader>la", ":Laravel artisan<cr>" },
			{ "<leader>lr", ":Laravel routes<cr>" },
			{ "<leader>lm", ":Laravel related<cr>" },
		},
		event = { "VeryLazy" },
		opts = {
			lsp_server = "phpactor",
		},
		config = true,
	},
	{
		-- "drafolin/phpactor.nvim",
		"gbprod/phpactor.nvim",
		-- enabled = false,
		build = function()
			require("phpactor.handler.update")()
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			install = {
				path = vim.fn.stdpath("data") .. "/opt/",
				branch = "master",
				-- bin = "/home/jd1t/.local/share/nvim/opt/phpactor/bin/phpactor", -- Custom path
				bin = vim.fn.stdpath("data") .. "/opt/phpactor/bin/phpactor",
				composer_bin = "composer",
				git_bin = "git",
				check_on_startup = "none",
			},
			lspconfig = {
				enabled = true,
				options = {
					settings = {
						phpactor = {
							completion = { enabled = true },
						},
					},
				},
			},
		},
	},
	-- {
	-- 	"gbprod/phpactor.nvim",
	-- 	build = function()
	-- 		require("phpactor.handler.update")()
	-- 	end,
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"neovim/nvim-lspconfig",
	-- 	},
	-- 	opts = {
	-- 		install = {
	-- 			path = vim.fn.stdpath("data") .. "/opt/",
	-- 			branch = "master",
	-- 			bin = vim.fn.stdpath("data") .. "mason/packages/phpactor/phpactor",
	-- 			php_bin = "php",
	-- 			composer_bin = "composer",
	-- 			git_bin = "git",
	-- 			check_on_startup = "none",
	-- 		},
	-- 		lspconfig = {
	-- 			enabled = true,
	-- 			options = {},
	-- 		},
	-- 	},
	-- },
	{
		"ricardoramirezr/blade-nav.nvim",
		ft = { "blade", "php" }, -- optional, improves startup time
		opts = {
			close_tag_on_complete = true, -- default: true
		},
	},
}

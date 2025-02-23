return { -- Autoformat
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			notify_on_error = false,
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				-- php = { "php_cs_fixer" },
				php = { "pint" },
				-- php = { "pretty-php" },
				-- Conform can also run multiple formatters sequentially
				-- python = { "isort", "black" },
				--
				-- You can use a sub-list to tell conform to run *until* a formatter
				-- is found.
				-- javascript = { "prettierd", "prettier", stop_after_first = true },
				-- javascript = { "prettierd", "prettier", stop_after_first = true },
				-- javascriptreact = { "prettierd", "prettier", stop_after_first = true },
			},
			-- formatters = {
			-- 	php = {
			-- 		command = "php-cs-fixer",
			-- 		args = {
			-- 			"fix",
			-- 			"$FILENAME",
			-- 			"--allow-risky=yes", -- if you have risky stuff in config, if not you dont need it.
			-- 		},
			-- 		stdin = false,
			-- 	},
			-- },
			callback = function()
				require("mini.trailspace").trim()
				require("mini.trailspace").trim_last_lines()
			end,
		})
	end,
	-- opts = {
	--   notify_on_error = false,
	--   format_on_save = {
	--     timeout_ms = 500,
	--     lsp_fallback = true,
	--   },
	--   formatters_by_ft = {
	--     lua = { 'stylua' },
	--     -- Conform can also run multiple formatters sequentially
	--     -- python = { "isort", "black" },
	--     --
	--     -- You can use a sub-list to tell conform to run *until* a formatter
	--     -- is found.
	--     -- javascript = { { "prettierd", "prettier" } },
	--   },
	-- },
}

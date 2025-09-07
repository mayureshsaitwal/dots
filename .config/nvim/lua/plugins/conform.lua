return {
	"stevearc/conform.nvim",
	-- opts = {
	-- 	formatters_by_ft = {
	-- 		lua = { "stylua" },
	-- 		python = { "ruff_format" },
	-- 		javascript = { "prettierd", "prettier", stop_after_first = true },
	-- 		typescript = { "prettierd", "prettier", stop_after_first = true },
	--          yaml = { "yamlfix" },
	-- 	},
	-- },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "ruff_format" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				yaml = { "prettierd", "prettier", stop_after_first = true },
				json = { "fixjson" },
				-- yaml = { "yamlfmt" },
			},
		})
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}

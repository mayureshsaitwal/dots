return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable({
			"lua_ls",
			"basedpyright",
			"clangd",
			"ruff",
			"rust-analyzer",
			"bashls",
		})

		-- local capabilities = require("blink.cmp").get_lsp_capabilities()
		--   capabilities.textDocument.onTypeFormatting = { dynamicRegistration = false }
		-- vim.lsp.on_type_formatting.enable()
		vim.diagnostic.config({
			-- virtual_lines = true, -- virtual_text = true,
			-- underline = true,
			-- update_in_insert = false,
			-- severity_sort = true,
			-- float = {
			-- 	border = "rounded",
			-- 	source = true,
			-- },
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "󰅚 ",
					[vim.diagnostic.severity.WARN] = "󰀪 ",
					[vim.diagnostic.severity.INFO] = "󰋽 ",
					[vim.diagnostic.severity.HINT] = "󰌶 ",
				},
				numhl = {
					[vim.diagnostic.severity.ERROR] = "ErrorMsg",
					[vim.diagnostic.severity.WARN] = "WarningMsg",
				},
			},
		})
	end,
}

return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },

	-- example using `opts` for defining servers
	opts = {
		servers = {
			lua_ls = {},
		},
	},
	keys = {
		{ "gd", "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>", "[G]oto [D]efinition" },
		{ "gr", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", "[G]oto [R]eferences" },
		{ "gI", "<cmd>lua require('telescope.builtin').lsp_implementations()<CR>", "[G]oto [I]mplementation" },
		{ "<leader>D", "<cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>", "Type [D]efinition" },
		{ "<leader>ds", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", "[D]ocument [S]ymbols" },
		{
			"<leader>ws",
			"<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>",
			"[W]orkspace [S]ymbols",
		},
		{ "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", "[R]e[n]ame" },
		{ "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", "[C]ode [A]ction", { "n", "x" } },
		{ "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", "[G]oto [D]eclaration" },
	},

	config = function(_, opts)
		local lspconfig = require("lspconfig")
		for server, config in pairs(opts.servers) do
			-- passing config.capabilities to blink.cmp merges with the capabilities in your
			-- `opts[server].capabilities, if you've defined it
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			lspconfig[server].setup(config)
		end
	end,
}

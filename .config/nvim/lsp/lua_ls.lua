return {
	cmd = {
		"lua-language-server",
	},
	filetypes = {
		"lua",
	},
	root_markers = {
		".git",
		".luacheckrc",
		".luarc.json",
		".luarc.jsonc",
		".stylua.toml",
		"selene.toml",
		"selene.yml",
		"stylua.toml",
	},
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT", -- Neovim uses LuaJIT
				path = vim.split(package.path, ";"),
			},
			diagnostics = {
				globals = { "vim" }, -- Recognize 'vim' as global
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true), -- Add Neovim runtime files
				maxPreload = 10000,
				preloadFileSize = 1000,
			},
			telemetry = { enable = false }, -- disable telemetry
		},
	},

	single_file_support = true,
	log_level = vim.lsp.protocol.MessageType.Warning,
}

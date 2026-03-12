vim.lsp.enable({
	"lua_ls",
	"basedpyright",
	"clangd",
	"ruff",
	"rust-analyzer",
	"bashls",
	"ts_ls",
})

vim.lsp.config["basedpyright"] = {
	cmd = { "basedpyright-langserver", "--stdio" },

	filetypes = { "python" },

	root_markers = {
		"pyproject.toml",
		"setup.py",
		"setup.cfg",
		"requirements.txt",
		".git",
	},

	settings = {
		basedpyright = {
			typeCheckingMode = "basic",

			reportMissingParameterType = false,
			reportUnknownParameterType = false,
			reportUnknownMemberType = false,
			reportUnknownArgumentType = false,
			reportUnannotatedClassAttribute = false,
		},

		python = {
			analysis = {
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
				diagnosticMode = "workspace",
			},
		},
	},
}

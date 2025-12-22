return {
	cmd = { "bash-language-server", "start" },
	filetypes = { "bash", "sh" },
	rootmarkers = {
		".git",
	},
	settings = {
		bashIde = {
			globPattern = "*@(.sh|.inc|.bash|.command)",
		},
	},
}

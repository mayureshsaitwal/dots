return {
	"notjedi/nvim-rooter.lua",
	-- event = "VeryLazy",
	lazy = false,
	opts = {
		rooter_patterns = { ".git", ".hg", ".svn", "package.json", "!node_modules" },
		trigger_patterns = { "*" },
		manual = false,
		fallback_to_parent = false,
		cd_scope = "global",
	},
}

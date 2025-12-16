return {
	"nvimdev/guard.nvim",
	dependencies = { "nvimdev/guard-collection" },
	config = function()
		local ft = require("guard.filetype")
		ft("c"):fmt("clang-format"):lint("clang-tidy")
		ft("cpp"):fmt("clang-format"):lint("clang-tidy")
		ft("lua"):fmt("stylua")
		ft("python"):fmt("ruff"):lint("ruff")
	end,
}

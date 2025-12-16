return {
	cmd = { "clangd", "--clang-tidy" },
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
	rootmarkers = {
		".clangd",
		".clang-tidy",
		".clang-format",
		"compile_commands.json",
		"compile_flags.txt",
		"configure.ac",
		".git",
	},
}

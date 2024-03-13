return {
	"nvim-tree/nvim-tree.lua",
	-- opts = {
	-- 	respect_buf_cwd = true,
	-- },
	keys = { { "<leader>e", "<cmd>NvimTreeToggle<CR>", { "n", "i" }, desc = { "Nvim Tree Toggle" } } },
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			update_focused_file = {
				enable = true,
				update_cwd = true,
			},
			renderer = {
				root_folder_modifier = ":t",
				-- These icons are visible when you install web-devicons
				icons = {
					glyphs = {
						default = "",
						symlink = "",
						folder = {
							arrow_open = "",
							arrow_closed = "",
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
							symlink_open = "",
						},
						git = {
							unstaged = "",
							staged = "S",
							unmerged = "",
							renamed = "➜",
							untracked = "U",
							deleted = "",
							ignored = "◌",
						},
					},
				},
			},
			diagnostics = {
				enable = true,
				show_on_dirs = true,
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},
			-- view = {
			--   width = 30,
			--   side = "left",
			--   mappings = {
			--     list = {
			--       { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
			--       { key = "h", cb = tree_cb "close_node" },
			--       { key = "v", cb = tree_cb "vsplit" },
			--     },
			--   },
			-- },
		})
	end,
	-- end,
}

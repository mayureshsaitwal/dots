return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	-- dependencies = { "rafamadriz/friendly-snippets", "mlaursen/vim-react-snippets" },
	version = "*",
	opts = {
		keymap = { preset = "default", ["<C-u>"] = { "select_and_accept", "fallback" } },
		snippets = { preset = "luasnip" },
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		completion = {
			-- 'prefix' will fuzzy match on the text before the cursor
			-- 'full' will fuzzy match on the text before *and* after the cursor
			-- example: 'foo_|_bar' will match 'foo_' for 'prefix' and 'foo__bar' for 'full'
			keyword = { range = "full" },

			-- Disable auto brackets
			-- NOTE: some LSPs may add auto brackets themselves anyway
			accept = { auto_brackets = { enabled = false } },

			-- Insert completion item on selection, don't select by default
			list = { selection = { preselect = true, auto_insert = true } },

			menu = {
				-- Don't automatically show the completion menu
				auto_show = true,
				border = "single",

				-- nvim-cmp style menu
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind", gap = 2 },
					},
				},
			},

			-- Show documentation when selecting a completion item
			documentation = { auto_show = true, auto_show_delay_ms = 500, window = { border = "single" } },

			-- Display a preview of the selected item on the current line
			ghost_text = { enabled = false },
		},
		sources = {
			default = { "snippets", "lsp", "path", "buffer" },
		},
		-- Experimental signature help support
		signature = { enabled = true, window = { border = "single" } },
	},
}

local trigger_text = "!"

return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = { "Kaiser-Yang/blink-cmp-dictionary" },
	version = "*",
	enabled = function()
		local filetype = vim.bo[0].filetype
		-- Disable for Telescope buffers
		if filetype == "TelescopePrompt" or filetype == "minifiles" or filetype == "snacks_picker_input" then
			return false
		end
		return true
	end,
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
			default = { "snippets", "lsp", "path", "buffer", "dictionary" },
			providers = {
				lsp = {
					name = "lsp",
					enabled = true,
					module = "blink.cmp.sources.lsp",
					-- kind = "LSP",
					min_keyword_length = 2,
					-- fallbacks = { "snippets", "buffer" },
					score_offset = 90, -- the higher the number, the higher the priority
				},
				path = {
					name = "Path",
					module = "blink.cmp.sources.path",
					score_offset = 25,
					-- When typing a path, I would get snippets and text in the
					-- suggestions, I want those to show only if there are no path
					-- suggestions
					fallbacks = { "snippets", "buffer" },
					min_keyword_length = 2,
					opts = {
						trailing_slash = false,
						label_trailing_slash = true,
						get_cwd = function(context)
							return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
						end,
						show_hidden_files_by_default = true,
					},
				},
				buffer = {
					name = "Buffer",
					enabled = true,
					max_items = 3,
					module = "blink.cmp.sources.buffer",
					min_keyword_length = 4,
					score_offset = 15, -- the higher the number, the higher the priority
				},
				snippets = {
					name = "snippets",
					enabled = true,
					max_items = 15,
					min_keyword_length = 2,
					module = "blink.cmp.sources.snippets",
					score_offset = 85, -- the higher the number, the higher the priority
					-- Only show snippets if I type the trigger_text characters, so
					-- to expand the "bash" snippet, if the trigger_text is ";" I have to
					should_show_items = function()
						local col = vim.api.nvim_win_get_cursor(0)[2]
						local before_cursor = vim.api.nvim_get_current_line():sub(1, col)
						-- NOTE: remember that `trigger_text` is modified at the top of the file
						return before_cursor:match(trigger_text .. "%w*$") ~= nil
					end,
					-- After accepting the completion, delete the trigger_text characters
					-- from the final inserted text
					transform_items = function(_, items)
						local col = vim.api.nvim_win_get_cursor(0)[2]
						local before_cursor = vim.api.nvim_get_current_line():sub(1, col)
						local trigger_pos = before_cursor:find(trigger_text .. "[^" .. trigger_text .. "]*$")
						if trigger_pos then
							for _, item in ipairs(items) do
								item.textEdit = {
									newText = item.insertText or item.label,
									range = {
										start = { line = vim.fn.line(".") - 1, character = trigger_pos - 1 },
										["end"] = { line = vim.fn.line(".") - 1, character = col },
									},
								}
							end
						end
						-- NOTE: After the transformation, I have to reload the luasnip source
						-- Otherwise really crazy shit happens and I spent way too much time
						-- figurig this out
						vim.schedule(function()
							require("blink.cmp").reload("snippets")
						end)
						return items
					end,
				},
				dictionary = {
					module = "blink-cmp-dictionary",
					name = "Dict",
					score_offset = 20, -- the higher the number, the higher the priority
					-- https://github.com/Kaiser-Yang/blink-cmp-dictionary/issues/2
					enabled = true,
					max_items = 8,
					min_keyword_length = 3,
					opts = {},
				},
			},
		},
		cmdline = {
			-- command line completion, thanks to dpetka2001 in reddit
			-- https://www.reddit.com/r/neovim/comments/1hjjf21/comment/m37fe4d/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
			sources = function()
				local type = vim.fn.getcmdtype()
				if type == "/" or type == "?" then
					return { "buffer" }
				end
				if type == ":" then
					return { "cmdline" }
				end
				return {}
			end,
		},
		-- Experimental signature help support
		signature = { enabled = true, window = { border = "single" } },
	},
}

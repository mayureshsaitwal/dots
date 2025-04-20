return {
	"echasnovski/mini.nvim",
	config = function()
		-- ai
		require("mini.ai").setup({ n_lines = 500 })

		require("mini.surround").setup({
			custom_surroundings = nil,

			highlight_duration = 1000,

			-- Module mappings. Use `''` (empty string) to disable one.
			mappings = {
				add = "sa", -- Add surrounding in Normal and Visual modes
				delete = "sd", -- Delete surrounding
				find = "sf", -- Find surrounding (to the right)
				find_left = "sF", -- Find surrounding (to the left)
				highlight = "sh", -- Highlight surrounding
				replace = "sr", -- Replace surrounding
				update_n_lines = "sn", -- Update `n_lines`

				suffix_last = "l", -- Suffix to search with "prev" method
				suffix_next = "n", -- Suffix to search with "next" method
			},

			n_lines = 20,
			respect_selection_type = false,
			search_method = "cover",
			silent = false,
		})

		require("mini.animate").setup({
			cursor = {
				enable = true,
			},
			scroll = {
				-- Whether to enable this animation
				enable = true,

				-- Timing of animation (how steps will progress in time)
				-- timing = --<function: implements linear total 250ms animation duration>,

				-- Subscroll generator based on total scroll
				-- subscroll = --<function: implements equal scroll with at most 60 steps>,
			},
		})

		-- require("mini.splitjoin").setup()

		-- require("mini.move").setup()

		-- require("mini.indentscope").setup({
		-- 	draw = {
		-- 		-- Delay (in ms) between event and start of drawing scope indicator
		-- 		delay = 10,
		--
		-- 		-- Symbol priority. Increase to display on top of more symbols.
		-- 		priority = 2,
		-- 	},
		-- 	symbol = "╎",
		-- })

		local miniclue = require("mini.clue")
		miniclue.setup({
			triggers = {
				-- Leader triggers
				{ mode = "n", keys = "<Leader>" },
				{ mode = "x", keys = "<Leader>" },

				-- Built-in completion
				{ mode = "i", keys = "<C-x>" },

				-- `g` key
				{ mode = "n", keys = "g" },
				{ mode = "x", keys = "g" },

				-- Marks
				{ mode = "n", keys = "'" },
				{ mode = "n", keys = "`" },
				{ mode = "x", keys = "'" },
				{ mode = "x", keys = "`" },

				-- Registers
				{ mode = "n", keys = '"' },
				{ mode = "x", keys = '"' },
				{ mode = "i", keys = "<C-r>" },
				{ mode = "c", keys = "<C-r>" },

				-- Window commands
				{ mode = "n", keys = "<C-w>" },

				-- `z` key
				{ mode = "n", keys = "z" },
				{ mode = "x", keys = "z" },
			},

			clues = {
				-- Enhance this by adding descriptions for <Leader> mapping groups
				miniclue.gen_clues.builtin_completion(),
				miniclue.gen_clues.g(),
				miniclue.gen_clues.marks(),
				miniclue.gen_clues.registers(),
				miniclue.gen_clues.windows(),
				miniclue.gen_clues.z(),
			},
		})

		-- require("mini.cursorword").setup()

		require("mini.files").setup({
			content = {
				-- Predicate for which file system entries to show
				filter = nil,
				-- What prefix to show to the left of file system entry
				prefix = nil,
				-- In which order to show file system entries
				sort = nil,
			},

			-- Module mappings created only inside explorer.
			-- Use `''` (empty string) to not create one.
			mappings = {
				close = "q",
				go_in = "l",
				go_in_plus = "L",
				go_out = "h",
				go_out_plus = "H",
				mark_goto = "'",
				mark_set = "m",
				reset = "<BS>",
				reveal_cwd = "@",
				show_help = "g?",
				synchronize = "J",
				trim_left = "<",
				trim_right = ">",
			},

			options = {
				permanent_delete = true,
				use_as_default_explorer = true,
			},

			windows = {
				max_number = math.huge,
				preview = false,
				width_focus = 50,
				width_nofocus = 15,
				width_preview = 25,
			},
		})
		local hipatterns = require("mini.hipatterns")
		hipatterns.setup({
			highlighters = {
				-- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
				fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
				hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
				todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
				note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

				-- Highlight hex color strings (`#rrggbb`) using that color
				hex_color = hipatterns.gen_highlighter.hex_color(),
			},
		})

		require("mini.move").setup({
			-- Module mappings. Use `''` (empty string) to disable one.
			mappings = {
				-- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
				left = "<M-h>",
				right = "<M-l>",
				down = "<M-j>",
				up = "<M-k>",

				-- Move current line in Normal mode
				line_left = "<M-h>",
				line_right = "<M-l>",
				line_down = "<M-j>",
				line_up = "<M-k>",
			},

			-- Options which control moving behavior
			options = {
				-- Automatically reindent selection during linewise vertical move
				reindent_linewise = true,
			},
		})
		require("mini.tabline").setup({
			show_icons = true,
			set_vim_settings = true,
			tabpage_section = "left",
		})
		require("mini.trailspace").setup()
		require("mini.notify").setup({
			lsp_progress = {
				enable = false,
			},
			window = {
				config = {},
				max_width_share = 0.382,
				winblend = 25,
			},
		})
	end,
}

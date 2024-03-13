return { -- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [']quote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()

		-- Simple and easy statusline.
		--  You could remove this setup call if you don't like it,
		--  and try some other statusline plugin
		-- local statusline = require 'mini.statusline'
		-- statusline.setup()

		-- You can configure sections in the statusline by overriding their
		-- default behavior. For example, here we disable the section for
		-- cursor information because line numbers are already enabled
		-- ---@diagnostic disable-next-line: duplicate-set-field
		-- statusline.section_location = function()
		--   return ''
		-- end
		--
		-- ... and there is more!
		--  Check out: https://github.com/echasnovski/mini.nvim

		require("mini.splitjoin").setup()

		require("mini.move").setup()
		require("mini.indentscope").setup({
			draw = {
				-- Delay (in ms) between event and start of drawing scope indicator
				delay = 10,

				-- Animation rule for scope's first drawing. A function which, given
				-- next and total step numbers, returns wait time (in ms). See
				-- |MiniIndentscope.gen_animation| for builtin options. To disable
				-- animation, use `require('mini.indentscope').gen_animation.none()`.
				-- animation = --<function: implements constant 20ms between steps>,

				-- Symbol priority. Increase to display on top of more symbols.
				priority = 2,
			},
			symbol = "╎",
		})
	end,
}

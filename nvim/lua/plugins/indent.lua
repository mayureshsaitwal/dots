return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		dependencies = {
			"TheGLander/indent-rainbowline.nvim",
		},
		opts = function(_, opts)
			-- Other blankline configuration here
			return require("indent-rainbowline").make_opts(opts)
		end,
		-- config = function()
		-- 	-- opts = {}
		-- 	-- require("ibl").setup(require("indent-rainbowline").make_opts(opts))
		-- 	local highlight = {
		-- 		"RainbowRed",
		-- 		"RainbowYellow",
		-- 		"RainbowBlue",
		-- 		"RainbowOrange",
		-- 		"RainbowGreen",
		-- 		"RainbowViolet",
		-- 		"RainbowCyan",
		-- 		-- "CursorColumn",
		-- 		-- "Whitespace",
		-- 	}
		-- 	local hooks = require("ibl.hooks")
		-- 	-- create the highlight groups in the highlight setup hook, so they are reset
		-- 	-- every time the colorscheme changes
		-- 	hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
		-- 		vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
		-- 		vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
		-- 		vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
		-- 		vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
		-- 		vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
		-- 		vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
		-- 		vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
		-- 	end)
		--
		-- 	vim.g.rainbow_delimiters = { highlight = highlight }
		-- 	-- vim.opt.list = true
		-- 	-- vim.opt.listchars:append("space:⋅")
		-- 	-- vim.opt.listchars:append("eol:↴")
		-- 	require("ibl").setup({
		-- 		-- indent = { highlight = highlight, char = "" },
		-- 		-- whitespace = {
		-- 		-- 	highlight = highlight,
		-- 		-- 	remove_blankline_trail = false,
		-- 		-- },
		-- 		scope = { enabled = true, show_start = true, highlight = highlight },
		-- 	})
		--
		-- 	hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
		-- 	return require("indent-rainbowline").make_opts(opts)
		-- end,
	},
	-- {
	-- 	"lukas-reineke/indent-blankline.nvim",
	-- 	event = "BufReadPre",
	-- 	main = "ibl",
	-- 	enabled = false,
	-- 	config = function()
	-- 		vim.opt.list = true
	-- 		-- vim.opt.listchars:append("space:⋅")
	-- 		-- vim.opt.listchars:append("eol:↴")
	--
	-- 		require("ibl").setup({
	-- 			exclude = {
	-- 				filetypes = { "help", "dashboard", "packer", "NvimTree", "Trouble", "TelescopePrompt", "Float" },
	-- 				buftypes = { "terminal", "nofile", "telescope" },
	-- 			},
	-- 			indent = {
	-- 				char = "│",
	-- 			},
	-- 			scope = {
	-- 				enabled = true,
	-- 				show_start = false,
	-- 			},
	-- 		})
	-- 	end,
	-- },
}

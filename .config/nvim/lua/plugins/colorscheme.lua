return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight]])
			require("core.colorscheme")
		end,
	},
	-- {
	-- 	"ntk148v/habamax.nvim",
	-- 	dependencies = { "rktjmp/lush.nvim" },
	-- 	config = function()
	-- 		vim.cmd("colorscheme habamax.nvim")
	-- 	end,
	-- },
	-- "echasnovski/mini.base16",
	-- config = function()
	-- 	require("mini.base16").setup({
	-- 		palette = {
	-- 			base00 = "#151515",
	-- 			base01 = "#1F1F1F",
	-- 			base02 = "#2E2E2E",
	-- 			base03 = "#424242",
	-- 			base04 = "#BBB6B6",
	-- 			base05 = "#E8E3E3",
	-- 			base06 = "#E8E3E3",
	-- 			base07 = "#E8E3E3",
	-- 			base08 = "#B66467",
	-- 			base09 = "#D9BC8C",
	-- 			base0A = "#D9BC8C",
	-- 			base0B = "#8C977D",
	-- 			base0C = "#8AA6A2",
	-- 			base0D = "#8DA3B9",
	-- 			base0E = "#A988B0",
	-- 			base0F = "#BBB6B6",
	-- 		},
	-- 	})
	-- 	-- vim.api.nvim_exec(
	-- 	-- 	[[
	-- 	--     function! CustomTelescopeHighlights() abort
	-- 	--       " Fetching colors from core Neovim highlight groups
	-- 	--       let fg = synIDattr(hlID('Normal'), 'fg')
	-- 	--       let bg0 = synIDattr(hlID('Normal'), 'bg')
	-- 	--       let bg1 = synIDattr(hlID('NormalFloat'), 'bg')
	-- 	--       let orange = synIDattr(hlID('WarningMsg'), 'fg')
	-- 	--       let purple = synIDattr(hlID('Statement'), 'fg')
	-- 	--       let green = synIDattr(hlID('String'), 'fg')
	-- 	--       let red = synIDattr(hlID('ErrorMsg'), 'fg')
	-- 	--
	-- 	--       " Setting custom highlights for Telescope
	-- 	--       call nvim_set_hl(0, 'TelescopeMatching', {'fg': orange})
	-- 	--       call nvim_set_hl(0, 'TelescopeSelection', {'fg': fg, 'bg': bg1, 'bold': v:true})
	-- 	--       call nvim_set_hl(0, 'TelescopePromptPrefix', {'bg': bg1})
	-- 	--       call nvim_set_hl(0, 'TelescopePromptNormal', {'bg': bg1})
	-- 	--       call nvim_set_hl(0, 'TelescopeResultsNormal', {'bg': bg0})
	-- 	--       call nvim_set_hl(0, 'TelescopePreviewNormal', {'bg': bg0})
	-- 	--       call nvim_set_hl(0, 'TelescopePromptBorder', {'bg': bg1, 'fg': bg1})
	-- 	--       call nvim_set_hl(0, 'TelescopeResultsBorder', {'bg': bg0, 'fg': bg0})
	-- 	--       call nvim_set_hl(0, 'TelescopePreviewBorder', {'bg': bg0, 'fg': bg0})
	-- 	--       call nvim_set_hl(0, 'TelescopePromptTitle', {'bg': purple, 'fg': bg0})
	-- 	--       call nvim_set_hl(0, 'TelescopeResultsTitle', {'fg': bg0})
	-- 	--       call nvim_set_hl(0, 'TelescopePreviewTitle', {'bg': green, 'fg': bg0})
	-- 	--       call nvim_set_hl(0, 'CmpItemKindField', {'bg': red, 'fg': bg0})
	-- 	--
	-- 	--       " Make cmp menu transparent
	-- 	--       call nvim_set_hl(0, 'PMenu', {'bg': 'NONE'})
	-- 	--     endfunction
	-- 	--
	-- 	--     " Call the function to apply the custom highlights
	-- 	--     call CustomTelescopeHighlights()
	-- 	--   ]],
	-- 	-- 	false
	-- 	-- )
	-- end,
}

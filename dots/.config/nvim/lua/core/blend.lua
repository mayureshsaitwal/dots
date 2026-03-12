vim.cmd([[

      highlight Normal guibg=none
      highlight NonText guibg=none
      highlight Normal ctermbg=none
      highlight NonText ctermbg=none

      function! CustomTelescopeHighlights() abort
        " Fetching colors from core Neovim highlight groups
        let fg = synIDattr(hlID('Normal'), 'fg')
        let bg0 = synIDattr(hlID('Normal'), 'bg')
        let bg1 = synIDattr(hlID('NormalFloat'), 'bg')
        let orange = synIDattr(hlID('WarningMsg'), 'fg')
        let purple = synIDattr(hlID('Statement'), 'fg')
        let green = synIDattr(hlID('String'), 'fg')
        let red = synIDattr(hlID('ErrorMsg'), 'fg')

        " Setting custom highlights for Telescope
        call nvim_set_hl(0, 'TelescopeMatching', {'fg': orange})
        call nvim_set_hl(0, 'TelescopeSelection', {'fg': fg, 'bg': bg1, 'bold': v:true})
        call nvim_set_hl(0, 'TelescopePromptPrefix', {'bg': bg1})
        call nvim_set_hl(0, 'TelescopePromptNormal', {'bg': bg1})
        call nvim_set_hl(0, 'TelescopeResultsNormal', {'bg': bg0})
        call nvim_set_hl(0, 'TelescopePreviewNormal', {'bg': bg0})
        call nvim_set_hl(0, 'TelescopePromptBorder', {'bg': bg1, 'fg': bg1})
        call nvim_set_hl(0, 'TelescopeResultsBorder', {'bg': bg0, 'fg': bg0})
        call nvim_set_hl(0, 'TelescopePreviewBorder', {'bg': bg0, 'fg': bg0})
        call nvim_set_hl(0, 'TelescopePromptTitle', {'bg': purple, 'fg': bg0})
        call nvim_set_hl(0, 'TelescopeResultsTitle', {'fg': bg0})
        call nvim_set_hl(0, 'TelescopePreviewTitle', {'bg': green, 'fg': bg0})
        call nvim_set_hl(0, 'CmpItemKindField', {'bg': red, 'fg': bg0})

        " Make cmp menu transparent
        call nvim_set_hl(0, 'PMenu', {'bg': 'NONE'})
      endfunction

      " Call the function to apply the custom highlights
      call CustomTelescopeHighlights()
    ]])

vim.api.nvim_exec(
	[[
      function! CustomTelescopeHighlights() abort
        " Fetching colors from core Neovim highlight groups
        let fg = synIDattr(hlID('Normal'), 'fg')
        let bg0 = synIDattr(hlID('Normal'), 'bg')
        let bg1 = synIDattr(hlID('NormalFloat'), 'bg')
        let orange = synIDattr(hlID('WarningMsg'), 'fg')
        let purple = synIDattr(hlID('Statement'), 'fg')
        let green = synIDattr(hlID('String'), 'fg')
        let red = synIDattr(hlID('ErrorMsg'), 'fg')

        " Setting custom highlights for Telescope
        call nvim_set_hl(0, 'TelescopeMatching', {'fg': orange})
        call nvim_set_hl(0, 'TelescopeSelection', {'fg': fg, 'bg': bg1, 'bold': v:true})
        call nvim_set_hl(0, 'TelescopePromptPrefix', {'bg': bg1})
        call nvim_set_hl(0, 'TelescopePromptNormal', {'bg': bg1})
        call nvim_set_hl(0, 'TelescopeResultsNormal', {'bg': bg0})
        call nvim_set_hl(0, 'TelescopePreviewNormal', {'bg': bg0})
        call nvim_set_hl(0, 'TelescopePromptBorder', {'bg': bg1, 'fg': bg1})
        call nvim_set_hl(0, 'TelescopeResultsBorder', {'bg': bg0, 'fg': bg0})
        call nvim_set_hl(0, 'TelescopePreviewBorder', {'bg': bg0, 'fg': bg0})
        call nvim_set_hl(0, 'TelescopePromptTitle', {'bg': purple, 'fg': bg0})
        call nvim_set_hl(0, 'TelescopeResultsTitle', {'fg': bg0})
        call nvim_set_hl(0, 'TelescopePreviewTitle', {'bg': green, 'fg': bg0})
        call nvim_set_hl(0, 'CmpItemKindField', {'bg': red, 'fg': bg0})

        " Make cmp menu transparent
        call nvim_set_hl(0, 'PMenu', {'bg': 'NONE'})
      endfunction

      " Call the function to apply the custom highlights
      call CustomTelescopeHighlights()
    ]],
	false
)

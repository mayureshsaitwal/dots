return {
	{
		"nvim-treesitter/nvim-treesitter",
		enabled = true,
		event = "BufReadPre",
		config = function()
			require("nvim-treesitter.configs").setup({
				tree_setter = {
					enable = true,
				},
				ensure_installed = {
					"tsx",
					"typescript",
					"javascript",
					"html",
					"css",
					"vue",
					"astro",
					"svelte",
					"gitcommit",
					"graphql",
					"json",
					"json5",
					"php",
					"lua",
					"markdown",
					"prisma",
					"vim",
				}, -- one of "all", or a list of languages
				sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
				ignore_install = { "haskell" }, -- list of parsers to ignore installing
				highlight = {
					enable = true,
					-- disable = { "c", "rust" },  -- list of language that will be disabled
					-- additional_vim_regex_highlighting = false,
				},

				incremental_selection = {
					enable = false,
					keymaps = {
						init_selection = "<leader>gnn",
						node_incremental = "<leader>gnr",
						scope_incremental = "<leader>gne",
						node_decremental = "<leader>gnt",
					},
				},

				indent = {
					enable = true,
				},

				textobjects = {
					move = {
						enable = false,
						set_jumps = true, -- whether to set jumps in the jumplist
						goto_next_start = {
							["]]"] = "@jsx.element",
							["]f"] = "@function.outer",
							["]m"] = "@class.outer",
						},
						goto_next_end = {
							["]F"] = "@function.outer",
							["]M"] = "@class.outer",
						},
						goto_previous_start = {
							["[["] = "@jsx.element",
							["[f"] = "@function.outer",
							["[m"] = "@class.outer",
						},
						goto_previous_end = {
							["[F"] = "@function.outer",
							["[M"] = "@class.outer",
						},
					},
					select = {
						enable = true,

						-- Automatically jump forward to textobj, similar to targets.vim
						lookahead = true,

						keymaps = {
							-- You can use the capture groups defined in textobjects.scm
							["af"] = "@function.outer",
							["if"] = "@function.inner",
							["ac"] = "@class.outer",
							["ic"] = "@class.inner",
						},
					},
					swap = {
						enable = true,
						swap_next = {
							["~"] = "@parameter.inner",
						},
					},
				},

				textsubjects = {
					enable = true,
					prev_selection = "<BS>",
					keymaps = {
						["<CR>"] = "textsubjects-smart", -- works in visual mode
					},
				},
			})

			-- Blade
			-- local treesiter = require("nvim-treesitter.configs")
			-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
			-- parser_config.blade = {
			-- 	install_info = {
			-- 		url = "https://github.com/EmranMR/tree-sitter-blade",
			-- 		files = { "src/parser.c" },
			-- 		branch = "main",
			-- 	},
			-- 	filetype = "blade",
			-- }
			--
			-- vim.filetype.add({
			-- 	pattern = {
			-- 		[".*%.blade%.php"] = "blade",
			-- 	},
			-- })
			-- local bladeGrp
			-- vim.api.nvim_create_augroup("BladeFiltypeRelated", { clear = true })
			-- vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
			-- 	pattern = "*.blade.php",
			-- 	group = bladeGrp,
			-- 	callback = function()
			-- 		vim.opt.filetype = "blade"
			-- 	end,
			-- })
		end,
		dependencies = {
			"hiphish/rainbow-delimiters.nvim",
			"JoosepAlviste/nvim-ts-context-commentstring",
			"nvim-treesitter/nvim-treesitter-textobjects",
			"RRethy/nvim-treesitter-textsubjects",
			-- "filNaj/tree-setter",
		},
	},

	{
		"windwp/nvim-ts-autotag",
		enabled = false,
		event = "BufReadPre",
		config = function()
			require("nvim-ts-autotag").setup({
				opts = {
					enable_close = false, -- Auto close tags
					enable_rename = true, -- Auto rename pairs of tags
					enable_close_on_slash = true, -- Auto close on trailing </
				},
				-- Also override individual filetype configs, these take priority.
				-- Empty by default, useful if one of the "opts" global settings
				-- doesn't work well in a specific filetype
				--[[ per_filetype = {
            ["html"] = {
              enable_close = false
            }
          } ]]
			})
		end,
	},
}

--
-- return { -- Highlight, edit, and navigate code
-- 	"nvim-treesitter/nvim-treesitter",
-- 	build = ":TSUpdate",
-- 	dependencies = { "nvim-treesitter/nvim-treesitter-textobjects", "windwp/nvim-ts-autotag" },
-- 	config = function()
-- 		-- [[ Configure Treesitter ]] See `:help nvim-treesitter`
--
-- 		---@diagnostic disable-next-line: missing-fields
-- 		require("nvim-treesitter.configs").setup({
-- 			ensure_installed = { "bash", "c", "html", "lua", "markdown", "vim", "vimdoc", "python" },
-- 			-- Autoinstall languages that are not installed
-- 			auto_install = true,
-- 			highlight = { enable = false },
-- 			indent = { enable = true },
-- 		})
--
-- 		require("nvim-ts-autotag").setup({
-- 			opts = {
-- 				-- Defaults
-- 				enable_close = true, -- Auto close tags
-- 				enable_rename = true, -- Auto rename pairs of tags
-- 				enable_close_on_slash = false, -- Auto close on trailing </
-- 			},
-- 		})
--
-- 		-- There are additional nvim-treesitter modules that you can use to interact
-- 		-- with nvim-treesitter. You should go explore a few and see what interests you:
-- 		--
-- 		--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
-- 		--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
-- 		--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
-- 	end,
-- }

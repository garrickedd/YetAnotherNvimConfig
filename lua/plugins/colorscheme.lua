return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nightfox").setup({
				options = {
					compile_path = vim.fn.stdpath("cache") .. "/nightfox",
					compile_file_suffix = "_compiled",
					transparent = false,
					terminal_colors = true,
					dim_inactive = false,
					module_default = true,
					colorblind = {
						enable = false,
						simulate_only = false,
						severity = { protan = 0, deutan = 0, tritan = 0 },
					},
					styles = {
						comments = "NONE",
						conditionals = "NONE",
						constants = "NONE",
						functions = "NONE",
						keywords = "NONE",
						numbers = "NONE",
						operators = "NONE",
						strings = "NONE",
						types = "NONE",
						variables = "NONE",
					},
					inverse = { match_paren = false, visual = false, search = false },
					modules = {},
				},
				palettes = {},
				specs = {},
				groups = {},
			})
		end,
	},
	{
		"shaunsingh/nord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.nord_contrast = true
			vim.g.nord_borders = false
			vim.g.nord_disable_background = true
			vim.g.nord_italic = false
			vim.g.nord_uniform_diff_background = true
			vim.g.nord_bold = false

			-- Load the colorscheme (Default is nord)
			vim.cmd("colorscheme nord")

			-- Toggle background transparency
			local bg_transparent = true
			local function toggle_transparency()
				bg_transparent = not bg_transparent
				vim.g.nord_disable_background = bg_transparent
				vim.cmd([[colorscheme nord]])
			end

			vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
		end,
	},
}

return {
	"MeanderingProgrammer/render-markdown.nvim",
	after = {
		"nvim-treesitter",
	},
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"echasnovski/mini.nvim",
	},
	config = function()
		require("render-markdown").setup({
			completions = { blink = { enabled = true } },
			anti_conceal = {
				enabled = true,
				ignore = {
					code_background = true,
					sign = true,
				},
				above = 0,
				below = 0,
			},
		})
	end,
}

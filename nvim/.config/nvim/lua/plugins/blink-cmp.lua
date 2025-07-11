return {
	{
		"saghen/blink.cmp",
		version = "v1.*",

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			keymap = {
				preset = "default",
			},

			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},
			completion = {
				trigger = { show_on_keyword = true },
				keyword = { range = "full" },
				list = { selection = { preselect = true, auto_insert = true } },
				documentation = { auto_show = true, auto_show_delay_ms = 500, treesitter_highlighting = true },
				menu = {
					enabled = true,
					scrolloff = 2,
					scrollbar = true,
					auto_show = function()
						return vim.bo.buftype ~= "prompt"
							and vim.b.completion ~= false
							and vim.bo.filetype ~= "TelescopePrompt"
					end,
				},
				ghost_text = { enabled = true },
			},
			signature = { enabled = true },
		},
	},
}

return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		local keymap = vim.keymap

		keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
		keymap.set("n", "<Leader>dc", dap.continue, {})
	end,
}

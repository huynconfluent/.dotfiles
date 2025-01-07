return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			local mason = require("mason")

			local mason_lspconfig = require("mason-lspconfig")

			local mason_tool_installer = require("mason-tool-installer")

			mason.setup({})

			-- Language Servers
			mason_lspconfig.setup({
				ensure_installed = {
					"ansiblels",
					"gopls",
					"jdtls",
					"ts_ls",
					"lua_ls",
					"basedpyright",
					"terraformls",
				},
			})

			-- Linters and Formatters
			mason_tool_installer.setup({
				ensure_installed = {
					"prettier",
					"stylua",
					"isort",
					"black",
					"djlint",
					"golines",
					"eslint_d",
					"pylint",
					"ansible-lint",
					"tflint",
					"golangci-lint",
					"hadolint",
					"shellcheck",
					"htmlhint",
					"stylelint",
					"yamllint",
					"gdtoolkit",
					"delve",
				},
			})
		end,
	},
}

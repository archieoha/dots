return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"mfussenegger/nvim-lint", -- Add nvim-lint as a dependency
	},
	config = function()
		-- Import Mason and related plugins
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		local lint = require("lint")

		-- Setup Mason UI
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- Setup Mason LSP Config
		mason_lspconfig.setup({
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
			},
			automatic_installation = true,
		})

		-- Setup Mason Tool Installer
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- Prettier formatter
				"stylua", -- Lua formatter
				"isort", -- Python formatter
				"black", -- Python formatter
				"pylint", -- Python linter
				"eslint_d", -- JS linter
			},
		})

		-- Setup nvim-lint with Mason-installed tools
		lint.linters_by_ft = {
			python = { "pylint" }, -- Use Pylint for Python
			lua = { "stylua" }, -- Use Stylua for Lua
			javascript = { "eslint_d" }, -- Use Eslint_d for JS
			typescript = { "eslint_d" },
			json = { "eslint_d" },
		}

		-- Automatically run linter on save
		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}

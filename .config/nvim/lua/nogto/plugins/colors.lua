function ColorMySetup(color)
	color = color or "tokyonight" -- Default theme is "tokyonight"

	-- Apply the chosen colorscheme
	--	vim.cmd.colorscheme(color)

	-- Theme-specific settings for optional customization
	if color == "tokyonight" then
		-- Tokyonight specific settings
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	elseif color == "rose-pine" then
		-- Rose-pine specific settings
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	elseif color == "gruvbox-material" then
		-- Gruvbox-material specific settings
		vim.g.gruvbox_material_background = "soft"
		vim.g.gruvbox_material_transparent_background = 2
		vim.cmd([[colorscheme gruvbox-material]])
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	elseif color == "kanagawa" then
		-- Kanagawa specific settings
		require("kanagawa").setup({
			transparent = true,
			dimInactive = true,
		})
		vim.cmd("colorscheme kanagawa")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	else
		-- Default transparency for other themes
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end
end
return {
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			disable_background = true,
	-- 			styles = {
	-- 				italic = false,
	-- 			},
	-- 		})
	--
	-- 		vim.cmd("colorscheme rose-pine")
	--
	-- 		ColorMySetup()
	-- 	end,
	-- },
	-- {
	-- 	"sainnhe/gruvbox-material",
	-- 	lazy = false,
	-- 	config = function()
	-- 		local g = vim.g
	--
	-- 		g.gruvbox_material_background = "soft"
	-- 		g.gruvbox_material_foreground = "material"
	-- 		g.gruvbox_material_transparent_background = 2
	-- 		g.gruvbox_material_sign_column_background = "grey"
	-- 		g.gruvbox_material_statusline_style = "default"
	-- 		g.gruvbox_material_ui_contrast = "low"
	-- 		g.gruvbox_material_diagnostic_line_highlight = "1"
	-- 		g.gruvbox_material_disable_terminal_colors = 1
	--
	-- 		-- Font settings
	-- 		g.gruvbox_material_enable_bold = 1
	-- 		g.gruvbox_material_enable_italic = 1
	--
	-- 		g.gruvbox_material_better_performance = 1
	--
	-- 		vim.cmd([[colorscheme gruvbox-material]])
	--
	-- 		vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#d4be98" })
	-- 		vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#d4be98" })
	-- 		vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { fg = "#d4be98" })
	-- 	end,
	-- 	priority = 1000,
	-- },
	--	{
	--"rebelot/kanagawa.nvim",
	--lazy = false,
	--config = function()
	--require("kanagawa").setup({
	--	compile = true,
	--	functionStyle = { bold = true },
	--	dimInactive = true,
	--	transparent = true,
	--	theme = "dark",
	--	})
	--vim.cmd("colorscheme kanagawa-dragon")
	--end,
	--override = function(colors)
	--local theme = colors.theme
	--return {
	--	NormalFloat = { bg = "none" },
	--	FloatBorder = { bg = "none" },
	--	FloatTitle = { bg = "none" },
	--	NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
	--	LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
	--	MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
	--	Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
	--	PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
	--		PmenuSbar = { bg = theme.ui.bg_m1 },
	--	PmenuThumb = { bg = theme.ui.bg_p2 },
	--	}
	--	end,
	--	},
	-- {
	-- 	"craftzdog/solarized-osaka.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		require("solarized-osaka").setup({
	-- 			vim.cmd("colorscheme solarized-osaka"),
	-- 		})
	-- 	end,
	-- },
	-- 	-- {
	-- 	-- 	"cdmill/neomodern.nvim",
	-- 	-- 	config = function()
	-- 	-- 		require("neomodern").setup({
	-- 	-- 			style = "roseprime",
	-- 	-- 			toggle_style_key = "<leader>cc",
	-- 	-- 			code_style = {
	-- 	-- 				headings = "none",
	-- 	-- 			},
	-- 	-- 			ui = {
	-- 	-- 				plain = true,
	-- 	-- 				show_eob = false,
	-- 	-- 				colored_docstrings = false,
	-- 	-- 				telescope = "borderless",
	-- 	-- 			},
	-- 	-- 		})
	-- 	-- 		require("neomodern").load()
	-- 	-- 	end,
	-- 	-- },
	-- 	{
	-- 		"dgox16/oldworld.nvim",
	-- 		lazy = false,
	-- 		priority = 1000,
	-- 		config = function()
	-- 			require("oldworld").setup({
	-- 				vim.cmd("colorscheme oldworld"),
	-- 			})
	-- 		end,
	-- 	},
	-- {
	-- 	"shmerl/neogotham",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd.colorscheme("neogotham")
	-- 	end,
	-- },
	-- {
	-- 	"killitar/obscure.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		vim.cmd.colorscheme("obscure")
	-- 	end,
	-- },
	-- {
	-- 	"zenbones-theme/zenbones.nvim",
	-- 	dependencies = "rktjmp/lush.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		vim.cmd.colorscheme("zenbones")
	-- 	end,
	-- },
	-- {
	-- 	"ilof2/posterpole.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("posterpole").setup({
	-- 			-- config here
	-- 		})
	-- 		vim.cmd("colorscheme posterpole")
	-- 	end,
	-- },
	-- {
	-- 	"vague2k/vague.nvim",
	-- 	config = function()
	-- 		require("vague").setup({
	-- 			vim.cmd("colorscheme vague"),
	-- 		})
	-- 	end,
	-- },
	--
	-- {
	-- 	"drewxs/ash.nvim",
	-- 	config = function()
	-- 		require("ash").setup({
	-- 			vim.cmd("colorscheme ash"),
	-- 		})
	-- 	end,
	-- },
	-- {
	-- 	"nuvic/flexoki-nvim",
	-- 	name = "flexoki",
	-- 	config = function()
	-- 		require("flexoki").setup({
	-- 			vim.cmd("colorscheme flexoki"),
	-- 		})
	-- 	end,
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false, -- Load this theme immediately to apply it as your colorscheme
	-- 	priority = 1000, -- Ensure it loads first
	-- 	config = function()
	-- 		-- Optional: Customize the theme
	-- 		require("tokyonight").setup({
	-- 			style = "day", -- Choose between "night", "storm", "day", or "moon"
	-- 			transparent = true, -- Disable/enable background transparency
	-- 			terminal_colors = true, -- Use the theme's colors in the terminal
	-- 			styles = {
	-- 				comments = { italic = true },
	-- 				keywords = { italic = true },
	-- 				functions = {},
	-- 				variables = {},
	-- 				sidebars = "transparent", -- Style for sidebars and floating windows
	-- 				floats = "transparent",
	-- 			},
	-- 		})
	-- 		-- Enable the theme
	-- 		vim.cmd("colorscheme tokyonight-night")
	-- 		ColorMySetup("tokyonight-night")
	-- 	end,
	-- },
	{
		"Vallen217/eidolon.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme eidolon]])
		end,
	},
	--
	--
	-- Lazy
	-- {
	-- 	"rjshkhr/shadow.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.opt.termguicolors = true
	-- 		vim.cmd.colorscheme("shadow")
	-- 	end,
	-- },
	-- {
	-- 	"jpwol/thorn.nvim",
	-- 	config = function()
	-- 		require("thorn").setup({})
	-- 		vim.cmd.colorscheme("thorn")
	-- 	end,
	-- },
}

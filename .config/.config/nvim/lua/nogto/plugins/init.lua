return {
	"folke/noice.nvim",
	"nvim-lua/plenary.nvim",
	"christoomey/vim-tmux-navigator",
	"xiyaowong/transparent.nvim",
	-- lazy.nvim
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"yorickpeterse/nvim-window",
		keys = {
			{ "<leader>wj", "<cmd>lua require('nvim-window').pick()<cr>", desc = "nvim-window: Jump to window" },
		},
		config = true,
	},
	{
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({
				background_colour = "#000000", -- Change this if needed
			})
			vim.notify = require("notify")
		end,
	},
}

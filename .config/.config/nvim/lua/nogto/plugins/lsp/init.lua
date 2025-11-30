return {
	"ray-x/lsp_signature.nvim",
	event = "InsertEnter",
	opts = {
		bind = true,
		hint_enable = true,
		handler_opts = {
			border = "rounded",
		},
		floating_window = true,
	},
	config = function(_, opts)
		require("lsp_signature").setup(opts)
	end,
}

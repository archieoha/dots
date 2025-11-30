-- lua/plugins/ccc.lua
return {
	"uga-rosa/ccc.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local ccc = require("ccc")

		ccc.setup({
			-- Энд өөрийн тохиргоо нэмэх боломжтой
			-- default config OK
		})

		-- Шорткат (сонголтоор)
		vim.keymap.set("n", "<leader>cc", ":CccPick<CR>", { desc = "Color Picker" })
		vim.keymap.set("n", "<leader>ct", ":CccConvert<CR>", { desc = "Color Convert" })
	end,
}

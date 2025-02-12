return {
	"AckslD/nvim-neoclip.lua",
	dependencies = {
		-- you'll need at least one of these
		{ "nvim-telescope/telescope.nvim" },
		{ "kkharji/sqlite.lua", module = "sqlite" },
		-- {'ibhagwan/fzf-lua'},
	},
	config = function()
		require("neoclip").setup({
			enable_persistent_history = true, -- Enable persistent storage
			db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
		})
		vim.keymap.set("n", "<leader>n", function()
			require("telescope").extensions.neoclip.default()
		end, { desc = "Open Neoclip" })
	end,
}

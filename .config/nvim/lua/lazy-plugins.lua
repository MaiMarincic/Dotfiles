-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require("lazy").setup({
	-- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

	-- NOTE: Plugins can also be added by using a table,
	-- with the first argument being the link and the following
	-- keys can be used to configure plugin behavior/loading/etc.
	--
	-- Use `opts = {}` to force a plugin to be loaded.
	--
	--  This is equivalent to:
	--    require('Comment').setup({})

	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", opts = {} },

	-- modular approach: using `require 'path/name'` will
	-- include a plugin definition from file lua/path/name.lua

	require("plugins/gitsigns"),

	require("plugins/mini"),

	require("plugins/telescope"),

	require("plugins/which-key"),

	require("plugins/lspconfig"),

	require("plugins/conform"),

	require("plugins/cmp"),

	require("plugins/catppuccin"),

	require("plugins/todo-comments"),

	require("plugins/treesitter"),

	require("plugins/harpoon"),

	require("plugins/neoclip"),

	require("plugins/curl"),

	require("plugins/colors"),

	require("plugins/quickfix"),

	require("plugins/lazydocker"),

	require("plugins/lazygit"),

	require("plugins/render-markdown"),
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- vim: ts=2 sts=2 sw=2 et

return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzy-native.nvim",
		},
		config = function()
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = { "node_modules", ".git", ".cache", ".next", "vendor" },
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("fzy_native")

			local builtin = require("telescope.builtin")
			vim.keymap.set(
				"n",
				"<leader>ff",
				":Telescope find_files find_command=rg,--ignore,--hidden,--files,-u<CR>",
				{}
			)
			vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
		end,
	},
}

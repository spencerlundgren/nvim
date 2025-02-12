return {
	"tpope/vim-fugitive",
	opts = {
		keys = {
			-- { "n", "<leader>gh", ":Gclog<CR>" },
			-- { "n", "tl", ":diffget //2<CR>" },
			-- { "n", "tr", ":diffget //3<CR>" },
			-- { "n", "tt", ":Gwrite<CR>" },
			-- { "n", "tt!", ":Gwrite!<CR>" }
		},
	},
  config = function()
			vim.keymap.set("n", "<leader>gg", vim.cmd.Git, {desc = ":Git command"})

			vim.keymap.set("n", "<leader>gh", ":Gclog<CR>", {}) -- look at merge conflict 
			vim.keymap.set("n", "tl", ":diffget //2<CR>", {}) -- take left (merge conflict)
			vim.keymap.set("n", "tr", ":diffget //3<CR>", {}) -- take right (merge conflict)
			vim.keymap.set("n", "tt", ":Gwrite<CR>", {}) -- take both?? (merge conflict)
			vim.keymap.set("n", "tt!", ":Gwrite!<CR>", {}) -- take both force?? (merge conflict)
  end
}

return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>g", ":Git<cr>")
	end
}

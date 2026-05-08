return {
	"blazkowolf/gruber-darker.nvim",
	opts = {
		bold = true,
		invert = {
			signs = false,
			tabline = false,
			visual = false,
		},
		italic = {
			strings = false,
			comments = true,
			operators = false,
			folds = true,
		},
		undercurl = true,
		underline = true,
	},
	config = function()
		vim.cmd.colorscheme("gruber-darker")
	end
}

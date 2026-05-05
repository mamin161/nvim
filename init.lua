require("config.lazy")

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({ higroup = 'IncSearch', timeout = 200 })
	end,
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'javascript', 'javascriptreact', 'java' },
	callback = function() vim.treesitter.start() end,
})

vim.lsp.config["clangd"] = {
	cmd = { 'clangd' },
	filetypes = { 'c', 'cpp' },
	root_markers = { { "Makefile", "makefile", "CMakeLists.txt", "compile_commands.json" }, ".git" }
}

vim.lsp.enable('clangd')


vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
	callback = function()
		vim.keymap.set('n', 'grd', vim.lsp.buf.definition, { desc = "Go to definition" })
	end
})

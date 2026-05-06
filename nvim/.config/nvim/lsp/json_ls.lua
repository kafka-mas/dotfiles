return {
	cmd = { "vscode-json-language-server", "--stdio" },
	filetypes = { "json" },
	--	root_markers = function() return vim.loop.cwd() end,
	root_markers = {},
	capabilities = vim.lsp.protocol.make_client_capabilities(),
}

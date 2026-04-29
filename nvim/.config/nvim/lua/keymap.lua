vim.keymap.set("n", "<leader>e", "<Cmd>Explore<CR>")
vim.keymap.set("n", "<leader>s", "<Cmd>luafile $MYVIMRC<CR>")

-- FZF --
local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader><leader>", fzf.files)
vim.keymap.set("n", "<leader>/", fzf.live_grep)

-- BLINK.CMP --
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "<Leader>fo", ":lua vim.lsp.buf.format()<CR>", opts)

-- PLUGINS --
vim.pack.add({
	{ src = "https://github.com/neanias/everforest-nvim" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/ibhagwan/fzf-lua" },
	{ src = "https://github.com/saghen/blink.cmp",            version = vim.version.range("^1") },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/akinsho/toggleterm.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
})


-- EVERFOREST --
require("everforest").setup({})

-- MASON --
require("mason").setup({})

-- LUALINE --
require("lualine").setup()

-- NVIM-TREE --
require("nvim-tree").setup({
	view = {
		width = 30,
	},
})

-- FZF --
local actions = require("fzf-lua.actions")
require("fzf-lua").setup({
	winopts = { backdrop = 85 },
	keymap = {
		builtin = {
			["<C-f>"] = "preview-page-down",
			["<C-b>"] = "preview-page-up",
			["<C-p>"] = "toggle-preview",
		},
		fzf = {
			["ctrl-a"] = "toggle-all",
			["ctrl-t"] = "first",
			["ctrl-g"] = "last",
			["ctrl-d"] = "half-page-down",
			["ctrl-u"] = "half-page-up",
		}
	},
	actions = {
		files = {
			["ctrl-q"] = actions.file_sel_to_qf,
			["ctrl-n"] = actions.toggle_ignore,
			["ctrl-h"] = actions.toggle_hidden,
			["enter"]  = actions.file_edit_or_qf,
		}
	}
})

-- BLINK --
require("blink.cmp").setup({
	fuzzy = { implementation = "prefer_rust" },
	signature = { enabled = true },
	keymap = {
		preset = "default",
		["<Tab>"] = { "select_and_accept", "fallback" },
		["<A-CR>"] = { "select_and_accept", "fallback" },
		["<C-y>"] = { "show", "show_documentation", "hide_documentation" },
		["<C-k>"] = { "select_prev", "fallback" },
		["<C-j>"] = { "select_next", "fallback" },
		["<C-b>"] = { "scroll_documentation_down", "fallback" },
		["<C-f>"] = { "scroll_documentation_up", "fallback" },
		["<A-Tab>"] = { "snippet_forward", "fallback" },
		["<A-S-Tab>"] = { "snippet_backward", "fallback" },
		-- Signature
		["<C-u>"] = { "scroll_signature_up", "fallback" },
		["<C-d>"] = { "scroll_signature_down", "fallback" },

		-- default in all keymap presets
		-- ["<C-s>"] = { "show_signature", "hide_signature", "fallback" },
		["<C-s>"] = { "show_documentation", "hide_documentation", "fallback" }
	},

	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "normal",
	},

	completion = {
		list = { selection = { preselect = true, auto_insert = false } },
		menu = { auto_show = true },
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		},
		ghost_text = { enabled = true },
	},

	cmdline = {
		keymap = {
			preset = "inherit",
			completion = { menu = { auto_show = true } },
			["<CR>"] = { "accept_and_enter", "fallback" },
		},
	},

	sources = {
		default = { "lsp", "path", "snippets" }
	}
})

-- NVIM-AUTOPAIRS --
require("nvim-autopairs").setup {}

-- TOGGLETERM --
require("toggleterm").setup {
	open_mapping = [[<c-\>]],
	size = 20,
	persist_mode = true,
}

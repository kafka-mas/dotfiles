--require("lazy").setup({
--  "neanias/everforest-nvim",
--  version = false,
--  lazy = false,
--  priority = 1000, -- Make sure to load this before other start plugins
--  config = function()
--    require("everforest").setup({
--      -- Optional: Your Everforest configuration options here
--    })
--  end,
--})
return {
    { 'neanias/everforest-nvim', priority = 999, name = 'everforest' },
}


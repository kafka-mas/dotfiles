vim.opt.number = true           -- Номера строк
vim.opt.relativenumber = true   -- Относительная нумерация
vim.opt.cursorline = true       -- Подсветка текущей строки
vim.opt.tabstop = 4             -- Ширина таба
vim.opt.shiftwidth = 4          -- Размер отступа
vim.opt.expandtab = true        -- Преобразовать табы в пробелы
vim.opt.smartindent = true      -- Умные отступы
vim.opt.ignorecase = true       -- Игнорировать регистр
vim.opt.smartcase = true        -- Умное игнорирование регистра

require("config.lazy")

vim.cmd([[colorscheme everforest]])

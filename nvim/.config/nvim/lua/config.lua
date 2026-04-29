vim.opt.number = true						-- Номера строк
vim.opt.relativenumber = true				-- Относительная нумерация

local width = 2
vim.opt.tabstop = width						-- Ширина таба
vim.opt.shiftwidth = width					-- Размер отступа
vim.opt.softtabstop = width
-- vim.opt.expandtab = true					-- Преобразовать табы в пробелы
vim.opt.smartindent = true					-- Умные отступы

vim.opt.cursorline = true					-- Подсветка текущей строки
vim.opt.colorcolumn = "81"

vim.opt.ignorecase = true					-- Игнорировать регистр
vim.opt.smartcase = true					-- Умное игнорирование регистра

vim.opt.clipboard = "unnamedplus"
vim.opt.winborder = "rounded"

vim.opt.wrap = false

vim.opt.list = true
vim.opt.listchars = {
	tab = '➔ ',
	multispace = '•',
	eol = '↵',
}

vim.g.mapleader = " "

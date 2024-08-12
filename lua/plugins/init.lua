-- plugins/init.lua

local Arr = {}

local barbarline = require('plugins.barbarline')
local colorscheme = require('plugins.colorscheme')
local dashboard = require('plugins.dashboard')
local floaterm = require('plugins.floaterm')
local lualine = require('plugins.lualine')
local nvim_tree = require('plugins.nvim_tree')
local project = require('plugins.project')
local telescope = require('plugins.telescope')
local comment = require('plugins.comment')

table.insert(Arr, barbarline)
table.insert(Arr, colorscheme)
table.insert(Arr, dashboard)
table.insert(Arr, floaterm)
table.insert(Arr, lualine)
table.insert(Arr, nvim_tree)
table.insert(Arr, project)
table.insert(Arr, telescope)
table.insert(Arr, comment)

return Arr

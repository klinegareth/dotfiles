vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "george"

local util = require("george.util")
Config = require("george.config")
C = require("george.palette")
local highlights = require("george.highlights")
local Treesitter = require("george.Treesitter")
local markdown = require("george.markdown")
local Whichkey = require("george.Whichkey")
local Git = require("george.Git")
local LSP = require("george.LSP")
local Quickscope = require("george.Quickscope")
local Telescope = require("george.Telescope")
local NvimTree = require("george.NvimTree")
local Lir = require("george.Lir")
local Buffer = require("george.Buffer")
local StatusLine = require("george.StatusLine")
local IndentBlankline = require("george.IndentBlankline")
local Dashboard = require("george.Dashboard")
local DiffView = require("george.DiffView")
local Bookmarks = require("george.Bookmarks")
local Bqf = require("george.Bqf")
local Cmp = require("george.Cmp")
local SymbolOutline = require("george.SymbolOutline")
local Misc = require("george.Misc")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP, Quickscope, Telescope, NvimTree, Lir, Buffer, StatusLine, IndentBlankline, Dashboard, DiffView, Bookmarks, Bqf, Cmp, SymbolOutline, Misc
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end
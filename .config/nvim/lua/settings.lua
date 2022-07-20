local o = vim.o
local wo = vim.wo
local bo = vim.bo
local g = vim.g

-- global options
o.swapfile = true
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = false
o.incsearch = true
o.ignorecase = true
o.scrolloff = 8
o.sidescrolloff = 8
o.clipboard = 'unnamedplus'
o.guicursor = 'a:ver10-blinkwait250-blinkoff250-blinkon250'
o.tabstop = 4
o.shiftwidth = 0
o.termguicolors = true
o.undofile = true
o.hidden = true

-- window-local options
wo.rnu = true
wo.nu = true

-- buffer-local options

-- plugin options
local chadtree_settings = {
	["theme.text_colour_set"] = "solarized_dark"
}
vim.api.nvim_set_var("chadtree_settings", chadtree_settings)

g.NERDTreeMinimalUI = 1

require'nvim-treesitter.configs'.setup {
ensure_installed = { "javascript", "typescript", "lua", "vim", "css", "fish", "glsl", "json"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	highlight = {
    	enable = true,              -- false will disable the whole extension
    	disable = {},  -- list of language that will be disabled
	},
	indent = {
		enable = true,
		disable = {},
	},
	incemental_selection = {
		enable = true,
		disable = {},
	},
}

-- g.AutoPairs = ["'<':'>', '(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''""]
g.AutoPairsShortcutToggle = '<M-a>'


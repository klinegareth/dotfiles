local map = vim.api.nvim_set_keymap

-- leader key map
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

options = { noremap = true }

-- sensible keyboard navigation in wrapped text
map('n', 'k', 'gk', options)
map('n', 'j', 'gj', options)

-- no shift for command mode

map('n', ';', ':', options)
map('n', ':', ';', options)
map('v', ';', ':', options)
map('v', ':', ';', options)

-- easy movement between splits

map('n', '<leader>h', '<C-W>h', options)
map('n', '<leader>j', '<C-W>j', options)
map('n', '<leader>k', '<C-W>k', options)
map('n', '<leader>l', '<C-W>l', options)
map('n', '<leader>H', '<C-W>10<', options)
map('n', '<leader>J', '<C-W>10-', options)
map('n', '<leader>K', '<C-W>10+', options)
map('n', '<leader>L', '<C-W>10>', options)
map('n', '<leader>=', '<C-W>=', options)
map('n', '<leader>S', ':split<CR>', options)
map('n', '<leader>s', ':vsplit<CR>', options)

-- just a whole bunch of shortcuts
map('n', '<leader>n', ':set number! relativenumber!<CR>', options)
map('n', '<leader>g', ':Go<CR>', options)
map('n', '<leader>G', ':Go 60%x50%<CR>', options)
map('n', '<leader>w', ':w<CR>', options)
map('n', '<leader>Q', ':qa!<CR>', options)
map('n', '<leader>q', ':q!<CR>', options)
map('n', '<leader>t', ':NERDTreeToggle<CR>', options)
map('n', '<leader>v', ':e! ~/.config/nvim/init.lua<CR> ', options)
map('n', '<leader>e', ':FZF<CR> ', options)
map('n', '<leader>B', ':bn<CR> ', options)
map('n', '<leader>b', ':b ', options)
map('n', '<leader>r', ':source ~/.config/nvim/init.lua<CR> ', options)
map('n', '<leader>T', ':ToggleTerm direction=float<CR>', options)
map('n', '<leader>R', ':RnvimrToggle<CR>', options)
map('n', '<leader>W', ':set wrap!<CR>', options)
map('n', '<leader>u', ":let @+ = expand('<cfile>')<CR>", options)
map('n', '<leader>c', ':lcd %:p:h<CR>:pwd<CR>', options)

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

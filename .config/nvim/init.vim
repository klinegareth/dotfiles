"
" ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
" ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
" ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
" ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
                                                

set shell=/usr/bin/fish
let g:colorizer_auto_filetype='css,html'
let g:AutoPairs = {'<':'>', '(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
let g:AutoPairsShortcutToggle='<M-a>'

set nohidden
set ignorecase
set incsearch

" Autosave on buffer change
au TextChanged,TextChangedI <buffer> if &readonly == 0 && filereadable(bufname('%')) | write | endif

set clipboard^=unnamedplus
set number relativenumber
set nu rnu
set scrolloff=8
set nohlsearch
set guicursor=a:ver10-blinkwait250-blinkoff250-blinkon250
set tabstop=4
set shiftwidth=4

" Search down into subfolders with tab-completion for all file-related tasks
set path+=**

" Display all matching files for tab completion
set wildmenu

" Persistent undo
if has('persistent_undo')
	" define a path to store persistent undo files.
	let target_path = expand('~/.config/nvim/persistentundo/')    "
	
	" create the directory and any parent directories
	" if the location does not exist.
  if !isdirectory(target_path)
		call system('mkdir -p ' . target_path)
	endif    
	
	" point Vim to the defined undo directory.
	let &undodir = target_path    

	" enable undo persistence.
			set undofile
endif




" ██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗██████╗ ███████╗
" ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗██╔════╝
" █████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║███████╗
" ██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║╚════██║
" ██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝███████║
" ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝
                                                              

" Set leader to spacebar
let mapleader=" "

" abbreviations
abbr stbr ʕ·ᴥ·ʔ
abbr lstbr -ʕ·ᴥ·ʔ
abbr rstbr ʕ·ᴥ·ʔ-
abbr p5jst p5-js-tutorial",
abbr "ci/ "code/intro/

" sensible keyboard navigation in wrapped text
map k gk
map j gj

" No shift for command mode
noremap ; :
noremap : ;

" easy movement between splits
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>H <C-W>10<
nnoremap <leader>J <C-W>10-
nnoremap <leader>K <C-W>10+
nnoremap <leader>L <C-W>10>
nnoremap <leader>= <C-W>=
nnoremap <leader>s :split<CR>
nnoremap <leader>S :vsplit<CR>

" just a whole bunch of shortcuts
nmap <F5> <Plug>VimspectorContinue
nnoremap <leader>n :set number! relativenumber!<CR>
nnoremap <leader>g :Go<CR>
nnoremap <leader>G :Go 60%x50%<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>Q :qa!<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>v :e! ~/.config/nvim/init.vim<CR> 
nnoremap <leader>e :FZF<CR> 
nnoremap <leader>B :bn<CR> 
nnoremap <leader>b :b 
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR> 
nnoremap <leader>T :ToggleTerm direction=float<CR>
nnoremap <leader>R :RnvimrToggle<CR>
nnoremap <leader>W :set wrap!<CR>
inoremap <C-W> <Esc>dwi




" ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
" ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
" ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
" ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
" ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
" ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝
                                                       

" Install vim-plugged if not already installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
call plug#begin('~/.vim/plugged')

" FZF
Plug 'junegunn/fzf'

" Goyo
Plug 'klinegareth/goyo.vim'

" Bullets
Plug 'dkarter/bullets.vim'

" gruvbox
Plug 'morhetz/gruvbox'

" vimspector
Plug 'puremourning/vimspector'

" treesitter 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" rnvimr
Plug 'kevinhwang91/rnvimr'

" lsp
Plug 'neovim/nvim-lspconfig'

" glslView-nvim
Plug 'timtro/glslView-nvim'

" vim-gsl until i can get treesitter/lsp to work lol
Plug 'tikhomirov/vim-glsl'

" Auto-close brackets
Plug 'jiangmiao/auto-pairs'

" Colorizer
Plug 'chrisbra/Colorizer' 

" toggleterm
Plug 'akinsho/toggleterm.nvim'

" NERDTREE
Plug 'preservim/nerdtree'

call plug#end()

" TreeSitter Setup
lua <<EOF
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
EOF

function! s:clearbg()
	highlight Normal     ctermbg=NONE guibg=NONE
"	highlight LineNr     ctermbg=NONE guibg=NONE
"	highlight SignColumn ctermbg=NONE guibg=NONE
"	highlight StatusLine ctermbg=NONE guibg=NONE
endfunction

autocmd vimenter * ++nested colorscheme gruvbox | call <SID>clearbg()

autocmd! User GoyoEnter nested call <SID>clearbg()
autocmd! User GoyoLeave nested call <SID>clearbg()


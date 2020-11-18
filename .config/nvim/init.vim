" Plugins
call plug#begin()
Plug 'mhartington/oceanic-next'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'MaxMEllon/vim-jsx-pretty'
call plug#end()

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax on
set t_Co=256
colorscheme OceanicNext
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1


" Normal stuff
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set nu
set nowrap
set smartcase

set noswapfile
set nobackup

set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=238 


:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set mouse=a
:set smarttab

set encoding=UTF-8
set updatetime=300

call plug#begin()

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/maxmx03/fluoromachine.nvim'
Plug 'https://github.com/christoomey/vim-tmux-navigator'

call plug#end()

" set colorscheme
:colorscheme fluoromachine

" keymap stuff
noremap <Space>sv <C-w>v
noremap <Space>sh <C-w>s
noremap <Space>se <C-w>=
noremap <Space>sx <cmd>close<CR>

noremap <Space>e :NERDTreeToggle<CR>
noremap <Space>x :qa<CR>
noremap <Space>xw :wqa<CR>

noremap <F8> :TagbarToggle<CR>
noremap <F29> :PlugClean<CR> :PlugInstall<CR>
noremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
noremap <Space>ff :Telescope find_files<CR>
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "<Tab>"

" variable stuff
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

:let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol='x'
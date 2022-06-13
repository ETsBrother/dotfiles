:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline' " Status Bar
Plug 'https://github.com/vim-airline/vim-airline-themes' "Themes for Status Bar
Plug 'https://github.com/preservim/nerdtree' " File Hierarchy Tree
Plug 'https://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'kyazdani42/nvim-web-devicons' " For File Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for Code Navigation
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'https://github.com/glepnir/dashboard-nvim' " Dashboard

call plug#end()

nnoremap <C-f> :NERDTreeToggle<CR>

let g:airline_powerline_fonts=1

nmap <C-t> :TagbarToggle<CR>
:set completeopt-=preview " For No Previews

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

let g:airline_theme='minimalist'

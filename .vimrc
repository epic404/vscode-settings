" Must be installed at ~/.config/nvim/init.vim

call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lewis6991/gitsigns.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-surround'
Plug 'sindrets/diffview.nvim'
call plug#end()

" Use vim settings and not vi
set nocompatible

" Turn on syntax color
syntax enable
colorscheme gruvbox

" Always show the vim mode
set showmode

" Don't wrap lines
set nowrap

" Tab = 4 spaces
set tabstop=4
set autoindent
set smarttab
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
set copyindent

set number " Show line numbers
set showmatch " Show matching parens
set ignorecase " Ignore casing with search
set hlsearch
set incsearch
set smartcase " Don't ignore case when it's included
set scrolloff=4 " The number of screen lines to keep above and below the cursor
set sidescrolloff=5 " The number of screen columns to keep to the left and right of the cursor
set gdefault " Search/replace covers whole line by default (global)
set laststatus=2 " Always show statusbar
set ruler " Always show cursor position
set wildmenu " Tab complete options shown as menu
set wildmode=list:longest,full
set title " Show filename as window title
set noerrorbells
set visualbell
set nofoldenable "no folding for now...
set backspace=indent,eol,start
set confirm
set history=1000
set complete-=i "limits autocomplete & improves perf
set hidden " Opens buffers w/o saving current changes

" Telescope key mappings "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" LuaLine settings "
lua << END
require('lualine').setup {
    options = {
        theme = 'gruvbox'
        }
    }
require('indent_blankline').setup()
require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "typescript",
        "javascript",
        "tsx",
        "svelte",
        "vue",
        "scss",
        "rust",
        "prisma",
        "json",
        "go",
        "css"
        },
    highlight = {
        enabled = true
        }
    }
require('gitsigns').setup()
require("nvim-autopairs").setup {}
END

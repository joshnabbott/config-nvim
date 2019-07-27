filetype plugin indent on
syntax enable

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins and Colorschemes
call plug#begin('~/.local/share/nvim/plugged')
Plug 'HerringtonDarkholme/yats.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/seoul256.vim'
Plug 'patstockwell/vim-monokai-tasty'

" async find and replace in project
Plug 'brooth/far.vim'
Plug 'burner/vim-svelte'
Plug 'elzer/vim-json'
Plug 'honza/vim-snippets'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'rking/ag.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'styled-components/vim-styled-components'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
colorscheme dracula


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fuzzy search with <control>+P
nnoremap <C-p> :FZF<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle NERDTree with <control>+K
" nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>

" NERDTree open at start
" autocmd VimEnter * NERDTree | wincmd p

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Splits
" Move between splits
" Move up <control> J
" Move down <control> K
" Move left <control> H
" Move right <control> L
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" netrw Settings
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_keepdir = 0
let g:netrw_liststyle = 3
let g:netrw_sort_options = 'i'
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_winsize = 15
autocmd VimEnter * if isdirectory(expand('<afile>')) | Explore | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE Config
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" Set this variable to change the error sign
let g:ale_sign_on_error = '●'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoVim settings
set nocompatible
set number
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

" Spaces & Tabs {{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

if dein#load_state('~/.local/share/dein')
    call dein#begin('~/.local/share/dein')
    call dein#add('~/.local/share/dein')

	call dein#add('HerringtonDarkholme/yats')
	call dein#add('mhartington/nvim-typescript', { 'build': './install.sh'})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

"backspace
set backspace=2

"tabs and indentation
set expandtab "tabs to spaces
set tabstop=2 "tabs = 2 spaces
set shiftwidth=2 "indentation = 2 spaces

"line numbers and cursor position
set relativenumber "make line numbers relative to current line
set number "display line numbers
set ls=2 "turn on vim status line, necessary in order to see ruler
set ruler "display line/column coordinates of cursor
set colorcolumn=120 "display column for 120 character limit
set cursorline "underline the current line of the cursor
set so=5 "keep cursor at least 5 lines from edge of window

"search
set hlsearch
nnoremap <silent><CR> :noh<CR><CR>

"word breaks
set iskeyword-=_

"paste mode
nnoremap <C-J> :set invpaste paste?<CR>
set pastetoggle=<C-J> "vim autoindent on pasted code
set showmode

"mouse
set mouse=a

"copy to clipboard
"On Mac OSX (with MacVim)
set clipboard=unnamed
"On (Ubuntu) Linux with +xterm_clipboard (sudo apt-get vim-gnome)
" set clipboard=unnamedplus

"Install vim-plug if not already present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
"Declare the list of plugins.
Plug 'ambv/black' "Opinionated formatting for Python
Plug 'editorconfig/editorconfig-vim' "Editorconfig support
Plug 'garbas/vim-snipmate' "Snippet expansion engine
Plug 'hashivim/vim-terraform' "Add terraform helpers and highlighting
Plug 'honza/vim-snippets' "Snippets for a large variety of languages
Plug 'marcweber/vim-addon-mw-utils' "Dependency for vim-snipmate
Plug 'morhetz/gruvbox'  "Color scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'}  "Autocompletion
Plug 'scrooloose/nerdtree' "File tree explorer
Plug 'sheerun/vim-polyglot'
Plug 'tomtom/tlib_vim' "Dependency for vim-snipmate
Plug 'tpope/vim-commentary' "Motions for commenting
Plug 'tpope/vim-fugitive' "Git commands in vim
Plug 'tpope/vim-surround' "Surround selections with quotes, etc.
"Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline' "Better status line
" Plug 'yonchu/accelerated-smooth-scroll' Now trying out comfortable-motion instead
Plug 'w0rp/ale'
Plug 'yuttie/comfortable-motion.vim'
"List ends here. Plugins become visible to Vim after this call.
call plug#end()

syntax on "Enable syntax highlighting
filetype plugin indent on

"vim colors"
set termguicolors "Required to allow gruvbox to use a larger color palette
set background=dark "gruvbox dark mode
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

"nerdtree"
"map nerdtree to cntrl n"
map <C-n> :NERDTreeToggle<CR>

"You Complete Me"
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1

"Autocomplete menu"
highlight Pmenu ctermfg=15 ctermbg=172
highlight PmenuSel ctermfg=172 ctermbg=8

"ALE
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {
\   'python': ['black', 'isort'],
\}
let g:ale_pattern_options = {
\   '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\   '\.bundle\.js$': {'ale_linters': [], 'ale_fixers': []},
\   '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\}

"vim-terraform
let g:terraform_fold_sections = 1
let g:terraform_remap_spacebar = 1

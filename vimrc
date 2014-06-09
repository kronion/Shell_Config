"backspace"
set backspace=2

"tabs and indentation"
set expandtab "tabs to spaces"
set tabstop=2 "tabs = 2 spaces"
set shiftwidth=2 "indentation = 2 spaces"

"line numbers and cursor position"
set number "display line numbers"
highlight LineNr ctermfg=white "recolor line numbers"
set ls=2 "turn on vim status line, necessary in order to see ruler"
set ruler "display line/column coordinates of cursor"
set colorcolumn=80 "display column for 80 character limit"
set cursorline "underline the current line of the cursor"
set so=5 "keep cursor at least 5 lines from edge of window"

"paste mode"
nnoremap <C-J> :set invpaste paste?<CR>
set pastetoggle=<C-J> "vim autoindent on pasted code"
set showmode

"copy to clipboard"
set clipboard=unnamed

syntax enable "do I still need this?"

"pathogen"
execute pathogen#infect()
syntax on
filetype plugin indent on

"omnicomplete"
"set omnifunc=syntaxcomplete#Complete"

"vim colors"
set background=dark "syntax highlighting chooses colors for dark backgrounds"
let g:solarized_termcolors=256 "do I still need this?"

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

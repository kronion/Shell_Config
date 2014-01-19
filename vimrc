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
set paste "disable vim autoindent on pasted code"

syntax enable "do I still need this?"

"pathogen"
execute pathogen#infect()
syntax on
filetype plugin indent on

"vim colors"
set background=dark "syntax highlighting chooses colors for dark backgrounds"
let g:solarized_termcolors=256 "do I still need this?"

"nerdtree"
map <C-n> :NERDTreeToggle<CR> "map nerdtree to cntrl n"

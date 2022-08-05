set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" runtime command sources files found within runtimepaths only
runtime coc_config.vim
runtime lsp_config.vim

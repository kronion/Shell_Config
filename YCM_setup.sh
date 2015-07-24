#!/bin/bash

git clone --recursive https://github.com/Valloric/YouCompleteMe.git ./dot_vim/bundle/YouCompleteMe
./dot_vim/bundle/YouCompleteMe/install.sh --clang-completer --gocode-completer

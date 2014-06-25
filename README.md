Shell Config Files
------------------

### Installation
To use these files, you must move them into the appropriate locations on your file system. The correct locations on my system are as follows:

* `vimrc` = `~/.vimrc`
* `zshrc` = `~/.zshrc`
* `ztheme` = `~/.oh-my-zsh/themes/cstedman.zsh-theme`
* `aliases.zsh` = `~/.oh-my-zsh/lib/aliases.zsh`
* `functions.zsh` = `~/.oh-my-zsh/lib/functions.zsh`
* `dot_vim` = `~/.vim`
* `batcharge.py` can go anywhere you want, just correct the path in `functions.zsh`.

`batcharge.py` is a script called by zsh in `precmd()` to generate battery status.

Note that this configuration sets Vim to be your default editor. You will have to set the correct path to your vim binary in `zshrc`.

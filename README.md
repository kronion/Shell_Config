Shell Config Files
------------------

### Installation
To use these files, you must move them into the appropriate locations on your file system. The correct locations on my system are as follows:

* `vimrc` = `~/.vimrc`
* `zshrc` = `~/.zshrc`
* `ztheme` = `~/.oh-my-zsh/custom/themes/cstedman.zsh-theme`
* `aliases.zsh` = `~/.oh-my-zsh/custom/aliases.zsh`
* `functions.zsh` = `~/.oh-my-zsh/custom/functions.zsh`
* `dot_vim` = `~/.vim`
* `batcharge.py` can go anywhere you want, just correct the path in `functions.zsh`.

### Scripts

* `batcharge.py` is a script called by zsh in `precmd()` to generate battery status. It only works on Macbooks.
* `YCM_setup.sh` is used to download and compile and setup autocompletion for vim. I assume that you've already installed all of the dependencies, particularly MacVim and Clang.
* `add_plugin.sh` is used to add new vim plugins as git subtrees of this repository. This makes plugin installation as easy as cloning this repository! The syntax is:
  ```
  ./add_plugins.sh repository-url repository-nickname
  ```

Note that this configuration sets vim to be your default editor. You will have to set the correct path to your vim binary in `zshrc`.

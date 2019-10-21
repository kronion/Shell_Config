Shell Config Files
------------------

### Installation
To use these files, you must move them into the appropriate locations on your file system. The correct locations on my system are as follows:

* `vimrc` = `~/.vimrc`
* `zshrc` = `~/.zshrc`
* `ztheme` = `~/.oh-my-zsh/custom/themes/cstedman.zsh-theme`
* `aliases.zsh` = `~/.oh-my-zsh/custom/aliases.zsh`
* `functions.zsh` = `~/.oh-my-zsh/custom/functions.zsh`
* `batcharge.py` can go anywhere you want, just correct the path in `functions.zsh`.

If you're running on OSX, you may want to move one of the default Zsh startup files like so:
```
sudo mv /etc/{zshenv,zprofile}
```
See [A Note on Zsh Startup Order](README.md#a-note-on-zsh-startup-order) for more information.

### Scripts

* `batcharge.py` is a script called by zsh in `precmd()` to generate battery status. It only works on Macbooks.
* `YCM_setup.sh` is used to download and compile and setup autocompletion for vim. I assume that you've already installed all of the dependencies, particularly MacVim and Clang.

Note that this configuration sets vim to be your default editor. You will have to set the correct path to your vim binary in `zshrc`.

### A Note on Zsh Startup Order

It's important to remember the order in which Zsh startup files will be sourced. You can find details here:
https://wiki.archlinux.org/index.php/Zsh.

Note that OSX provides default `/etc/zshenv`, `/etc/zshrc`, and `/etc/profile` files as of 10.12.
`/etc/zshenv` is particularly notable because it sets the default `$PATH` using `usr/libexec/path_helper`.
This is problematic because `path_helper` actually _prepends_ to `$PATH`, and `/etc/zshenv` is always sourced in all Zsh
shells, including subshells. To avoid `$PATH` changes in subshells, move `/etc/zshenv` to `/etc/zprofile`. This ensures
that the `$PATH` configuration is only run for login shells. You can learn more about this issue at
https://github.com/sorin-ionescu/prezto/issues/381.

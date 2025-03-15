# (Neo)Vim configuration

In order to make configuration as portable as possible, settings that are applicable
to both vim and neovim settings should be placed in the `vimrc` file, while settings
specific to neovim belong in `init.vim`. `init.vim` first sources `vimrc` and then
proceeds with its own contents.

## Where to place the files

Use hard-links to make it easy to commit future changes back to this repo.

`vimrc` should be placed in the user's home directory, `~/.vimrc`:

```zsh
ln vimrc ~/.vimrc
```

`init.vim` should be placed in `$XDG_CONFIG_HOME/nvim/`. By default, that is
`~/.config/nvim/init.vim`. See https://superuser.com/a/425712 for more information.

```zsh
ln init.vim ~/.config/nvim/init.vim
```

`coc_config.vim` should be placed alongside `init.vim`:

```zsh
ln coc_config.vim ~/.config/nvim/coc_config.vim
```

`markdown.vim` is an "ftplugin," i.e. a plugin that runs only for the named filetype.
It belongs in `~/.config/nvim/after/ftplugin/`. This ensures it will be sourced after
and alongside any system defaults.

```zsh
mkdir -p ~/.config/nvim/after/ftplugin
ln markdown.vim ~/.config/nvim/after/ftplugin/markdown.vim
```

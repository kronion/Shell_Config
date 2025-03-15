# Neovim configuration setup

Note that all directories are assumed to exist ahead of time.

1. Install `lazy.nvim`.

```zsh
ln lazy.lua ~/.config/nvim/lua/config/lazy.lua
```

2. Install plugins.

```zsh
ln plugins/* ~/.config/nvim/lua/plugins/
```

3. Initialize Neovim's config to hook everything together.

```zsh
ln init.lua ~/.config/nvim/init.lua
```

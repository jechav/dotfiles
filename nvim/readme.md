# Nvim config lua

## Instalation

```bash
brew install nvim
rm -rf ~/.local/share/nvim/
rm -rf ~/.local/state/nvim/
bash ./dev
```

## Pre

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

brew install ripgrep
 ```


```bash
nvim
```

```vim
:e ~/.config/nvim/lua/jechav/packer.lua
:so
:PackerSync
```


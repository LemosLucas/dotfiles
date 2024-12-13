This repo contains the dotfiles relative to my personal configuration
# General Homebrew stuff
This is the list of installed components from brew
```sh
brew install exa      # Modern replacement for 'ls'
brew install fd       # Simple, fast and user-friendly alternative to find
brew install flyctl   # Command-line tools for fly.io services
brew install gh       # GitHub command-line tool
brew install neovim   # Ambitious Vim-fork focused on extensibility and agility
brew install nmap     # Port scanning utility for large networks
brew install node     # Platform built on V8 to build network applications
brew install ripgrep  # Search tool like grep and The Silver Searcher
brew install starship # Cross-shell prompt for astronauts
brew install tmux     # Terminal multiplexer
brew install act      # Github Action local runner
brew install llvm     # Necessary to install [clangd](https://clangd.llvm.org/installation.html)
brew install imagemagick # Image processing library: https://imagemagick.org/script/index.php

brew tap oven-sh/bun # Installing bun (JS runtime & package manager)
brew install bun

# Linters and formatters
brew tap "rhysd/actionlint" "https://github.com/rhysd/actionlint"
brew install actionlint
brew install fsouza/prettierd/prettierd
brew install shfmt                      # Autoformat shell scripts

```

## Other installs not comprised on Homebrew

```sh
npm install -g eslint_d     # Formater and linter for Javascript
```

# neovim
I created a symlink for the nvim config files like this:

```bash
ln -s ~/Documents/Dev/dotfiles/.config/nvim  ~/.config
```

## Packer (neovim package manager)
[Packer](https://github.com/wbthomason/packer.nvim#quickstart) manages the installation of all neovim. Once installed, run:
```sh
:PackerInstall
:PackerUpdate
```


# tmux
All my tmux config was taken from [devaslife](https://github.com/craftzdog/dotfiles-public/blob/master/.tmux.conf). He also has a [video tutorial](https://www.youtube.com/watch?v=sSOfr2MtRU8) showcasing how he uses it.

## Useful commands

 - The prefix key was remapped to CTRL-T
 - <prefix> c: creates a new window
 - <prefix> n: moves to the **next** window
 - <prefix> p: moves to the **previous** window
 - <prefix> &: exits tmux environment
 - <prefix> ?: shows all tmux key bindings

A symlink was created referencing this repo like below:
```bash
ln -s ~/Documents/Dev/dotfiles/.tmux.conf  ~/
```
# NerdFonts
NerdFonts was installed like this:
```shell
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```
Then, install the **Complete** nerd fonts!

# TODO
- [ ] Create a install script for the dotfiles in this repo
  - Running `brew leaves` shows all manually installed packages on my machine
  - Running `brew leaves | xargs -n1 brew desc --eval-all` shows pkg names and their descriptions


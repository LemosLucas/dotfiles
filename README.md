This repo contains the dotfiles relative to my personal configuration
# General home brew stuff
This is the list of installed components from brew
```sh
brew install ripgrep    # Recommended grep search for neovim Telescope live_grep and grep_string
brew install fd         # Recommended finder for neovim
brew install node       # Installing npm and nodeJS
```

# neovim
Install neovim with `brew install neovim`
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
Install tmux with `brew install tmux`
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

NerdFonts was installed like this:
```shell
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```
Then, install the **Complete** nerd fonts!

# TODO
- [ ] Continue neovim installation with [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
  - An example config can been [here](https://github.com/LunarVim/Neovim-from-scratch/blob/master/lua/user/nvim-tree.lua)
- [ ] Create a install script for the dotfiles in this repo
  - Running `brew leaves` shows all manually installed packages on my machine
  - Running `brew leaves | xargs -n1 brew desc --eval-all` shows pkg names and their descriptions


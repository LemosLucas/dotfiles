This repo contains the dotfiles relative to my personal configuration

# nvim
Install neovim with `brew install neovim`
I created a symlink for the nvim config files like this:

```bash
ln -s ~/Documents/Dev/dotfiles/.config/nvim  ~/.config
```

# tmux
Install emux with `brew install tmux`
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

# Custom scripts
Some custome scripts also live in this repo. `ide-tmux` creates several panels to simulate an IDE-like experience.
Since I'm using `zsh` as my bash, I've included the following lines in by ~/.zshrc file:
```bash
...
export PATH=$PATH:~/Documents/Dev/dotfiles/bin
```

It adds this folder to the `$PATH` environment variable and makes it available no matter which folder I'm currently visiting




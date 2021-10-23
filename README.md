This repo contains the dotfiles relative to my personal configuration

# nvim
I created a symlink for the nvim config files like this:

```bash
ln -s ~/Documents/Dev/dotfiles/.config/nvim  ~/.config
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

# Custom scripts
Some custome scripts also live in this repo. `ide-tmux` creates several panels to simulate an IDE-like experience.
To make it available everywhere, I did the following:
 - Created a folder to place all this family of scripts: "~/Documents/Dev/bin"
 - Symlinked this script to that folder location:

 ```bash
 ln -s ~/Documents/Dev/dotfiles/ide-tmux ~/Documents/Dev/bin
 ```
 Since I'm using `zsh` as my bash, I've included the following lines in by ~/.zshrc file:
 ```bash
 ...
 export PATH=$PATH:~/Documents/Dev/bin
 ```
 It adds this folder to the `$PATH` environment variable and makes it available no matter which folder I'm currently visiting

 - [ ] In case some new scripts come up, I think it's worth to create a `bin` folder in this dotfile repo so that we can symlink the whole folderH

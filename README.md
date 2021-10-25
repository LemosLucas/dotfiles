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

 - [ ] In case some new scripts come up, I think it's worth to create a `bin` folder in this dotfile repo so that we can symlink the whole folder

# fish
I installed [fish](https://fishshell.com/) as a default bash since it provides several good defaults out of the box. Its [docs](https://fishshell.com/docs/current/index.html#) are very helpful.
On top of `fish`, I'm using:
 - [fisher](https://github.com/jorgebucaran/fisher): plugin manager
 - [NerdFonts](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts): provide custom symbols on terminal, which I installed using default Homebrew (see below)
 - [tide](https://github.com/IlanCosman/tide): fancy Fish prompt
 - [z](https://github.com/jethrokuan/z): an intelligent finder based on recency and frequency to find the directory you aim to go to
 - [exa](https://the.exa.website/): a replacement for `ls` using NerdFont icons and colors (see `config.shell` for some aliases using it)
 - [peco](https://github.com/peco/peco): a interactive filtering tool that can take input from multiple places (see `functions/peco_select_history.fish` for an example using it)
   - This is a *powerful* tool. See [these](https://github.com/peco/peco/wiki/Sample-Usage) usecases 

NerdFonts was installed like this:
```shell
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

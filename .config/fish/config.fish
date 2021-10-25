set fish_greeting ""
if status is-interactive
    # Commands to run in interactive sessions can go here
end

#starship init fish | source

command -qv nvim && alias vim nvim
set -gx EDITOR nvim
set -gx PATH ~/Documents/Dev/bin $PATH


# aliases
alias ll "exa -l -g --icons"
alias lla "ll -a"
alias llt "exa --tree --level=2 --long --icons --git-ignore"
alias llta "llt -a --ignore-glob=.git"

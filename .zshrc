HOME_DIR=$(cd ~; pwd)
DOTFILES=$(dirname $(readlink ${HOME_DIR}/.zshrc))
GITHUB_REPO=$(cd ${DOTFILES}/..; pwd)

# Makes ls command to use color output
export CLICOLORS=1

# Add my custom bin directory to PATH + VSCode
export PATH=$PATH:$DOTFILES/bin:"/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Add custom directories to CDPATH
export CDPATH=".:${GITHUB_REPO}"

# Aliases
alias ghub="cd ${GITHUB_REPO}"
alias ll="ls -lt"
alias vim="nvim"
alias view="vim -R"

# Activate starship
eval "$(starship init zsh)"

# Enable vi mode on terminal
bindkey -v

# Make `asdf` package manager available
. /usr/local/opt/asdf/libexec/asdf.sh

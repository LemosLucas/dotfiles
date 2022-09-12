HOME_DIR=$(cd ~; pwd)
DOTFILES=$(dirname $(readlink ${HOME_DIR}/.zshrc))
GITHUB_REPO=$(cd ${DOTFILES}/..; pwd)

# Add my custom bin directory to PATH
export PATH=$PATH:$DOTFILES/bin

# Add custom directories to CDPATH
export CDPATH=".:${GITHUB_REPO}"

# Aliases
alias ghub="cd ${GITHUB_REPO}"
alias ll="ls -lt"
alias vim="nvim"
alias view="vim -R"

# Activate starship
eval "$(starship init zsh)"


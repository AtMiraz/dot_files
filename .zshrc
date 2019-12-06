# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Spaceship prompt theme
ZSH_THEME="spaceship"

# Starts tmux on login
ZSH_TMUX_AUTOSTART=true

# Case sensitive completion
# CASE_SENSITIVE="true"

# Checks for Oh-my-zsh updates every 7 days
export UPDATE_ZSH_DAYS=7

# autoc correct
ENABLE_CORRECTION="true"


# Plugins load
plugins=(git, tmux)

source $ZSH/oh-my-zsh.sh

# User configuration

# loads nvm
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

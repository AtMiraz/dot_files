# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Spaceship prompt theme
ZSH_THEME=powerlevel10k/powerlevel10k

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

# Loads FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Needs to install the_silver_searcher in order for this to work
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git --ignore node_modules --ignore Library -g ""'

alias vim="nvim" # Uncomment if using Vim8 instead of neovim

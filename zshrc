#export ZSH_PLUGINS="/Users/max/.config/zsh-plugins" #idk if this is even needed for anything

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.config/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh #for manual git repo
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
autoload compinit && compinit # https://github.com/zsh-users/zsh-autosuggestions/issues/515

#source ~/apple.zsh-theme #kinda irrelevant with starship

#plugins=(git history sudo zsh-autosuggestions) #leftover from omz

# Enable vi style keybinds
bindkey -v

# User configuration
# Still some stuff here from omz
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshc="nvim ~/.zshrc"
alias c="clear"
alias n="nvim"
alias nvimc="nvim ~/.config/nvim/init.vim"
alias v="nvim"
alias neo="neofetch"
alias up2="brew update && brew upgrade"
alias kittyc="nvim ~/.config/kitty/kitty.conf"

#initialize starship prompt
eval "$(starship init zsh)"
neofetch

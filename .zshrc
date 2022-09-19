# Path to your oh-my-zsh installation.
export ZSH=/Users/joseechavez/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="random"
# ZSH_THEME="murilasso"
# ZSH_THEME="wezm"
ZSH_THEME="kphoen2"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting history history-substring-search alias-finder zsh-autosuggestions)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
PHP_AUTOCONF="/usr/local/bin/autoconf"

export LC_ALL=en_US.UTF-8

export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/Library/Python/3.8/bin:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias tmuxconf="vim ~/.tmux.conf"

# pretty print
alias ccat='bat' # or use bat

alias rmr='rm -Rf '
alias k='kubectl'
alias grepsrc="grep -R $1 src/"
alias copy='xclip -sel clip'

alias refresh='source ~/.zshrc'
alias crun='cargo run'
alias dotfiles='cd ~/.dotfiles'

alias git-diff="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gbranch="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"


alias sessionizer="~/.local/bin/tmux-sessionizer"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/"

function git-branch {
    git branch $1
    git checkout $1
}

## Go
# export PATH="$PATH:/usr/local/go/bin"

## Rust
export PATH="$HOME/.cargo/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Use 256 color for tmux.
alias tmux="TERM=screen-256color-bce tmux"
# Attempt to take over existing sessions before creating a new tmux session.
TMUX_DEFAULT_SESSION="tmux"
alias t="tmux a -d -t ${TMUX_DEFAULT_SESSION} 2> /dev/null || tmux new -s ${TMUX_DEFAULT_SESSION}"
if [[ -z "$TMUX" ]]; then
  # Switch to xterm if we're in a tmux session.
  TERM="xterm-256color"
fi

# Source local zshrc configs.
if [[ -f ~/.zshrc.local ]]; then
  source ~/.zshrc.local
fi

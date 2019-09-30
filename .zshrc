# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/java/jdk-11.0.2/:$PATH
export PATH=$HOME/go/bin:$PATH
export GOPATH=$HOME/go:$HOME/Projects/www/Go
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$HOME/.rbenv/shims:$PATH
export PATH=$HOME/.local/bin:$PATH

eval "$(rbenv init -)"

# Path to your oh-my-zsh installation.
export ZSH="/home/zulu/.oh-my-zsh"
export XDG_CONFIG_HOME=$HOME/.config
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="af-magic"
#ZSH_THEME="kennethreitz"
#ZSH_THEME="miloshadzic"
#ZSH_THEME="minimal"
#ZSH_THEME="sporty_256"
#ZSH_THEME="terminalparty"
#ZSH_THEME="fino"
#ZSH_THEME="jispwoso"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

alias .='cd'
alias ss='sudo su'
alias .nv='nvim ~/.config/nvim/init.vim'
alias .v='vim ~/.vim/vimrc'
alias .z='nvim ~/.zshrc'
alias .w='vim ~Projects/www'
alias c='clear'
alias ls='ls --color=auto --group-directories-first'
alias la='ls -lAh --color=auto --group-directories-first'
alias ping='ping -c 3'
alias se='sudoedit'
alias zs='sudo zypper search'
alias zi='sudo zypper install'
alias v='vim'
alias nv='nvim'
#alias cD='mkdir'
#alias cF='touch'
alias sbl='subl3'
alias ht='htop'
alias gt='gtop'
alias m='mocp'
alias mn='ncmpcpp'
alias fv='vifm'
alias fr='ranger'
alias sz='sudo zypper'
alias ed='emacs --daemon'
alias ec='emacsclient -c'
alias e='emacs -nw'
alias b='cd ..'
alias syncboost='rclone sync /home/zulu/GDrive/Dropbox/Boostnote Dropbox-boost:Boostnote'
alias syncpcloud='rclone sync /home/zulu/GDrive/pCloud/ pcloud:HUB'
alias config='/usr/bin/git --git-dir=$HOME/Документы/dotfiles/ --work-tree=$HOME'

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

h() {
  if [[ -z "$1" ]]; then
    history
  else
    history 0 | grep "$*"
  fi
}

#Alias cd + ls
function .. {
  builtin cd "$@" && ls -F
}

#Alias mkdir + ls
function cD {
  mkdir "$@" && ls -F
}

#Alias touch + ls
function cF {
  touch "$@" && ls -F
}

#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#  tmux a -t default || exec tmux new -s default && exit;
#fi

#eval "$(fasd --init auto)"

bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

#function zle-line-init zle-keymap-select {
#    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
#    zle reset-prompt
#}

#zle -N zle-line-init
#zle -N zle-keymap-select

BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim

stty -ixon

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

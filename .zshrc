# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/include/pgsql/:$PATH
export PGDATA=/usr/include/pgsql/data
export GOPATH=$HOME/go
export GOPATH=$GOPATH:$HOME/Code/Go
export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin:$HOME/Code/Go/bin
export PATH=$PATH:$HOME/go/bin

# export PATH=$HOME/.rbenv/bin:$PATH
# export PATH=$HOME/.rbenv/shims:$PATH
export PATH=$HOME/.local/bin:$PATH
# Path to your Oh My Zsh installation.
export ZSH=$HOME/.oh-my-zsh
export XDG_CONFIG_HOME=$HOME/.config
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="archcraft"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
# ZSH_THEME="af-magic"
# ZSH_THEME="kennethreitz"
# ZSH_THEME="miloshadzic"
# ZSH_THEME="minimal"
# ZSH_THEME="sporty_256"
# ZSH_THEME="terminalparty"
# ZSH_THEME="fino"
# ZSH_THEME="jispwoso"
# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="gnzh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME="archcraft"
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
CASE_SENSITIVE="true"
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
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
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# On-demand rehash
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd

# omz
alias zshconfig="geany ~/.zshrc"
alias ohmyzsh="thunar ~/.oh-my-zsh"

# ls
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -a'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gst='git status'
alias gp='git push'
alias gl='git log'
alias lol='git log --all --graph'

# my aliases
alias jp='vifm ~/Code/side_projects/java_projectsi -e :mkdir '
alias gp='vifm ~/Code/Go/src/github.com'
alias dot='/usr/bin/git --git-dir=/home/milk/dotfiles --work-tree=/home/milk'
alias upvpn='wg-quick up wg0'
alias dnvpn='wg-quick down wg0'
alias rsvpn='systemctl restart wg-quick@wg0.service'
alias .='cd'
alias mk='mkdir'
alias tf='touch'
# alias .nv='nvim ~/.config/nvim/lua'
alias .nv='cd /home/milk/.config/nvim && nvim'
alias .v='vim ~/.vim/vimrc'
alias .z='vim ~/.zshrc'
alias .k='vim ~/.config/kitty/kitty.conf'
# alias .t='vim ~/.config/termite/config'
alias .p='vim ~/.profile'
# alias .kak='kak ~/.config/kak/kakrc'
alias .a='vim ~/.config/alacritty/alacritty.toml'
alias c='clear'
alias ls='ls --color=auto --group-directories-first'
alias la='ls -lAh --color=auto --group-directories-first'
alias ping='ping -c 3'
alias se='sudoedit'
alias ps='sudo pacman -Ss'
alias pi='sudo pacman -S'
alias pup='sudo pacman -Syyu'
alias as='yay -Ss'
alias ai='yay -S'
alias aup='yay -Syyu'
alias v='vim'
alias nv='nvim'
alias tm='tmux'
alias nn='nnn -ead'
alias sbl='subl3'
alias ht='htop'
alias gt='gtop'
alias cm='cmus'
alias fv='vifm'
alias nt='vim /home/milk/Документы/NOTES/notes.md'
alias s='sensors'
alias b='cd ..'

## functions
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

# alias create maven project
function jmv {
  cd ~/Code/side_projects/java_projects/ && \
  mvn archetype:generate -DarchetypeArtifactId=maven-archetype-quickstart -DgroupId=com.beoff.${1} -DartifactId=${1} -DarchetypeVersion=1.5 -DinteractiveMode=false -Dversion=1.0-SNAPSHOT
}

# alias create gradle project
function jgr {
  cd ~/Code/side_projects/java_projects/ && mkdir ${1} && cd ${1} && \
  gradle init --type java-application --dsl groovy --test-framework junit --package com.beoff.${1} --project-name ${1} --no-split-project --java-version 17 <<< 'no'
}
# implementation language: Java
# target Java version: 17
# project name default:
# application structure: single application project
# build script DSL: Groovy
# test framework: JUnit 4 
# generate build using new APIs and behavior:no
  # gradle init --language java --version 17 --type application --dsl groovy --test-framework junit --behavior none --package com.beoff.${1} --name ${1}

# default apps 
export BROWSER=/usr/bin/vivaldi
export EDITOR=/usr/bin/vim
export TERM=kitty
export TERMINAL=/usr/bin/kitty

## vifm ##
export PATH=$PATH:$HOME/.config/vifm/scripts

## Go ##
export CONFIG_PATH_AUTH_APP=$HOME/Code/Go/src/github.com/jmoloko/youtube/NikolayTuzov/grpc-auth/sso/config/local.yaml
export CONFIG_PATH=$HOME/Code/Go/src/github.com/jmoloko/youtube/NikolayTuzov/url-shortener/config/local.yaml
export PATH="$PATH:$(go env GOPATH)/bin"
# export SALES_DB_DISABLE_TLS=true
# export GO111MODULE=on 
# export GOPROXY=https://goproxy.cn 
export DB_HOST=localhost
export DB_PORT=5431
export DB_USER=postgres
export DB_PASSWORD=1111
export DB_NAME=comments
export DB_TABLE=comments
export SSL_MODE=disable


# ctrl-S save
stty -ixon

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

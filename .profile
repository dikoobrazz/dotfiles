. "$HOME/.cargo/env"
export GOPATH=$HOME/go
export GOPATH=$GOPATH:$HOME/Code/Go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin:/$HOME/Code/Go/bin
export TERM=kitty
export TERMINAL=/usr/bin/kitty
export BROWSER=/usr/bin/vivaldi
export EDITOR=/usr/bin/vim
# export QT_QPA_PLATFORMTHEME=qt5ct


export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


# Added by Toolbox App
export PATH="$PATH:/home/milk/.local/share/JetBrains/Toolbox/scripts"


# >>> coursier install directory >>>
export PATH="$PATH:/home/milk/.local/share/coursier/bin"
# <<< coursier install directory <<<

# Path to your oh-my-zsh installation.
export ZSH="/Users/oliviazhang/.oh-my-zsh"
export PS1="[%* - %D] %d %% "
ZSH_THEME="robbyrussell"

export PATH="$HOME/.dotnet/tools:$PATH"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias gs='git status'
alias gc='git commit '
alias gru='git remote update'
alias grup='git remote update origin -p'
alias grue='git remote update origin'
alias grom='git rebase origin/master'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias glog='git log --graph --oneline --all --decorate'
alias gdo='git difftool origin/master .'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias grn='git branch -m'

alias be='bundle exec'
alias rc='rails c'

alias frbe='foreman run bundle exec'
alias fr='foreman run'
alias fs='foreman start'

alias la= 'ls -lA'

alias rn='react-native'

# . $HOME/.asdf/asdf.sh
# export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# Configure the ANDROID_HOME environment variable
export ANDROID_SDK=/Users/oliviazhang/Library/Android/sdk
export PATH="$ANDROID_SDK/platform-tools:$PATH"
export PATH="$ANDROID_SDK/emulator:$PATH"
export PATH="$ANDROID_SDK/tools:$PATH"
export PATH="$ANDROID_SDK/tools/bin:$PATH"

export EXPO_DEBUG=true

export PATH="/Users/oliviazhang/.nvm/versions/node/v10.13.0/bin:$PATH"

export PATH="/Users/oliviazhang/Development/flutter/bin:$PATH"

# Apple developer account for vermonster
export APPLE_ID="itunes@vermonster.com"

export PATH="/usr/local/bin/mongo:$PATH"
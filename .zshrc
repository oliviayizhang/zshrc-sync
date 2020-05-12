export ZSH="/Users/oliviazhang/.oh-my-zsh"
export PS1="[%* - %D] %d %% "
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

plugins=(
  git
)

# Aliases
alias gs='git status'
alias gitm='git commit -m '
alias gru='git remote update'
alias grom='git rebase origin/master'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gra='git rebase --abort'
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

alias la='ls -lA'

alias rn-ios='react-native run-ios'
alias rn-android='react-native run-android'

# . $HOME/.asdf/asdf.sh
# export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# switch node version automatically
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# Configure the ANDROID_HOME environment variable
export ANDROID_SDK=/Users/oliviazhang/Library/Android/sdk
export PATH="$ANDROID_SDK/platform-tools:$PATH"
export PATH="$ANDROID_SDK/emulator:$PATH"
export PATH="$ANDROID_SDK/tools:$PATH"
export PATH="$ANDROID_SDK/tools/bin:$PATH"

export PATH="$HOME/.dotnet/tools:$PATH"
export EXPO_DEBUG=true

export PATH="/Users/oliviazhang/.nvm/versions/node/v10.13.0/bin:$PATH"

export PATH="/Users/oliviazhang/Development/flutter/bin:$PATH"

# Apple developer account for vermonster
export APPLE_ID="itunes@vermonster.com"

export PATH="/usr/local/bin/mongo:$PATH"

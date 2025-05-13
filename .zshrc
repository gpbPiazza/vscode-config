export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
CASE_SENSITIVE="true"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(
  git 
  docker 
  zsh-autosuggestions 
  kubectl
)

source $ZSH/oh-my-zsh.sh

# alias
alias zs_config="code ~/.zshrc"
alias zs_reload="source ~/.zshrc"
alias omyzs_config="code ~/.oh-my-zsh"
alias ss_config="code ~/.spaceshiprc"
alias gt="gotestsum -- -tags=dynamic"
alias py="python3"
alias pip="pip3"
alias git="git -P"
alias git_delete_branchs="git branch | grep -v "main" | xargs git branch -D"

alias kube="kubectl"
alias kube_use_prod_cluster="kubectl config use-context gke-production"
alias kube_use_dev_cluster="kubectl config use-context gke-development"
alias kube_use_old_prod_cluster="kubectl config use-context old-gke-production"

eval "$(direnv hook zsh)"

source "/opt/homebrew/opt/spaceship/spaceship.zsh"

[[ -s "/Users/olaisaac/.gvm/scripts/gvm" ]] && source "/Users/olaisaac/.gvm/scripts/gvm"

export GOROOT="/Users/olaisaac/.gvm/gos/go1.24.1"
export GOPATH="$HOME/go"
# Whenever change go version maybe you need to set this
# ➜ go env -w GOTOOLCHAIN=go1.23.2+auto
# ➜ go env -w GOROOT="/Users/olaisaac/.gvm/gos/go1.23.2"

# export GOPATH=$HOME/goexport 
export PATH=$PATH:$HOME/go/bin
export GOROOT_BOOTSTRAP=$GOROOT
export GOTESTSUM_FORMAT="testdox"
export GOTESTSUM_FORMAT_ICONS="octicons"
export GO111MODULE="on"

export C_INCLUDE_PATH=$(brew --prefix)/include
export LIBRARY_PATH=$(brew --prefix)/lib

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Load Angular CLI autocompletion.
source <(ng completion script)

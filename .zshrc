export ZSH="$HOME/.oh-my-zsh"

CASE_SENSITIVE="true"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(
  git 
  docker 
  zsh-autosuggestions 
  dotenv
)

source $ZSH/oh-my-zsh.sh

# alias
alias zs_config="code ~/.zshrc"
alias zs_reload="source ~/.zshrc"
alias omyzs_config="code ~/.oh-my-zsh"
alias ss_config="code ~/.spaceshiprc"

#GO


eval "$(direnv hook zsh)"

source /opt/homebrew/opt/spaceship/spaceship.zsh

[[ -s "/Users/olaisaac/.gvm/scripts/gvm" ]] && source "/Users/olaisaac/.gvm/scripts/gvm"

export GOROOT="/Users/olaisaac/.gvm/gos/go1.21" 
export GOPATH=$HOME/go
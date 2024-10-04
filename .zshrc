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
alias spaceshiprc_config="code ~/.spaceshiprc"

# GO
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

source /opt/homebrew/opt/spaceship/spaceship.zsh

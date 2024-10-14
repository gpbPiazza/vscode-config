export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
CASE_SENSITIVE="true"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(
  git 
  docker 
  zsh-autosuggestions 
)

source $ZSH/oh-my-zsh.sh

# alias
alias zs_config="code ~/.zshrc"
alias zs_reload="source ~/.zshrc"
alias omyzs_config="code ~/.oh-my-zsh"
alias ss_config="code ~/.spaceshiprc"
alias gt="gotestsum"

eval "$(direnv hook zsh)"

source "/opt/homebrew/opt/spaceship/spaceship.zsh"

[[ -s "/Users/olaisaac/.gvm/scripts/gvm" ]] && source "/Users/olaisaac/.gvm/scripts/gvm"

export GOROOT="/Users/olaisaac/go/pkg/mod/golang.org/toolchain@v0.0.1-go1.21.1.darwin-arm64"
export GOPATH=$HOME/goexport 
export PATH=$PATH:$HOME/go/bin
export GOTESTSUM_FORMAT="testdox"
export GOTESTSUM_FORMAT_ICONS="octicons"
